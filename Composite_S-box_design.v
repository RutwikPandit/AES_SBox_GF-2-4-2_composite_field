// Code your design here
module SBOX(input [7:0]in, output [7:0]out);
  wire [7:0]	temp1;
  wire [7:0]	temp2;
  wire [7:0]	temp3;
  
  composite_transformation composite_transformation(.in(in),.out(temp1));
  
  inverse_in_comp_gf_2_4 inverse_in_comp_gf_2_4(.a(temp1),.c(temp2));
  
  inverse_composite_transformation inverse_composite_transformation(.in(temp2),.out(temp3));
  
  Affine_map Affine_map(.in(temp3),.out(out));
  
endmodule

module composite_transformation(input [7:0]in,output [7:0]out);
  assign out[7] =in[7] ^ in[5];
  assign out[6] =in[7] ^ in[5] ^ in[3] ^ in[2];
  assign out[5] =in[7] ^ in[6] ^ in[4] ^ in[1];
  assign out[4] =in[6] ^ in[5] ^ in[4] ;
  assign out[3] =in[7] ^ in[6] ^ in[2] ^ in[1];
  assign out[2] =in[6] ^ in[4] ^ in[1] ;
  assign out[1] =in[3] ^ in[1] ;
  assign out[0] =in[7] ^ in[6] ^ in[4] ^ in[3] ^ in[2] ^ in[0];
  
endmodule

module inverse_composite_transformation(input [7:0]in,output [7:0]out);
  assign out[0]=  in[6] ^ in[4] ^ in[0];
  assign out[1]=  in[7] ^ in[5] ^ in[4];
  assign out[2]=  in[6] ^ in[5] ^ in[4] ^ in[1];
  assign out[3]=  in[7] ^ in[5] ^ in[4] ^ in[1] ;
  assign out[4]=  in[6] ^ in[4] ^ in[3] ^ in[1];
  assign out[5]=  in[7] ^ in[5] ^ in[2];
  assign out[6]=  in[7] ^ in[6] ^ in[5] ^ in[3] ^ in[2] ^ in[1];
  assign out[7]=  in[5] ^ in[2];
endmodule

module inverse_in_comp_gf_2_4(input [7:0]a,output [7:0]c);
  wire [3:0]ah;
  wire [3:0]al;
  wire [3:0]t;
  assign t =4'b1;
  wire [3:0]u;
  assign u = 4'h9;
  wire [3:0]A_sq;
  wire [3:0]sq_mul_u;
  wire [3:0]B_sq;
  wire [3:0]AB;
  wire [3:0]inv;
  assign al[0]=a[0];
  assign al[1]=a[1];
  assign al[2]=a[2];
  assign al[3]=a[3];
  assign ah[0]=a[4];
  assign ah[1]=a[5];
  assign ah[2]=a[6];
  assign ah[3]=a[7];
  wire [3:0]d0;
  wire [3:0]d1;
  
  comp_sqr 		sqr1( .x(ah), .out(A_sq));
  comp_mult 	mult1( .x(u), .y(A_sq), .out(sq_mul_u));  
  comp_sqr 		sqr2( .x(al), .out(B_sq));
  comp_mult 	mult2( .x(ah), .y(al), .out(AB));
  comp_inverse 	commoninv( .in((sq_mul_u^B_sq^AB) ), .out(inv) );
  comp_mult	 	mult3( .x(ah), .y(inv), .out(d1));  
  comp_mult 	mult4( .x(ah^al), .y(inv), .out(d0));
  
  assign c[0]=d0[0];
  assign c[1]=d0[1];
  assign c[2]=d0[2];
  assign c[3]=d0[3];
  assign c[4]=d1[0];
  assign c[5]=d1[1];
  assign c[6]=d1[2];
  assign c[7]=d1[3];
  
endmodule

module comp_sqr(input [3:0]x , output [3:0]out);
  assign out[3]=x[3];
  assign out[2]=x[3]^x[1];
  assign out[1]=x[2];
  assign out[0]=x[2]^x[0];
endmodule

module comp_mult( input [3:0]x,input [3:0]y, output [3:0]out);
  wire [6:0]c;
  assign c[0]=(x[0]&y[0]);
  assign c[1]=(x[0]&y[1] ^ x[1]&y[0]);
  assign c[2]=(x[0]&y[2] ^ x[1]&y[1] ^ x[2]&y[0]);
  assign c[3]=(x[0]&y[3] ^ x[1]&y[2] ^ x[2]&y[1]  ^ x[3]&y[0]);
  assign c[4]=(x[3]&y[1] ^ x[2]&y[2] ^ x[1]&y[3]);
  assign c[5]=(x[3]&y[2] ^ x[2]&y[3]);
  assign c[6]=(x[3]&y[3]);
  assign out[3]= ( c[6] ^ c[3]) ;
  assign out[2]= ( c[6] ^ c[5] ^ c[2] );
  assign out[1]= ( c[5] ^ c[4] ^ c[1] );
  assign out[0]= ( c[4] ^ c[0] );
endmodule

module comp_inverse(input [3:0]in ,output [3:0]out);
  reg [3:0] outputbyte;
  always @ (in)
    begin
      case(in)
      	4'h0 : outputbyte = 4'h0;
      	4'h1 : outputbyte = 4'h1;
      	4'h2 : outputbyte = 4'h9;
      	4'h3 : outputbyte = 4'he;
      	4'h4 : outputbyte = 4'hd;
      	4'h5 : outputbyte = 4'hb;
      	4'h6 : outputbyte = 4'h7;
      	4'h7 : outputbyte = 4'h6;
      	4'h8 : outputbyte = 4'hf;
      	4'h9 : outputbyte = 4'h2;
      	4'ha : outputbyte = 4'hc;
      	4'hb : outputbyte = 4'h5;
      	4'hc : outputbyte = 4'ha;
      	4'hd : outputbyte = 4'h4;
      	4'he : outputbyte = 4'h3;
      	4'hf : outputbyte = 4'h8;
      endcase
    end
  assign out[0]=outputbyte[0];
  assign out[1]=outputbyte[1];
  assign out[2]=outputbyte[2];
  assign out[3]=outputbyte[3];
  
endmodule


module Affine_map(input [7:0]in ,output [7:0]out);
  assign out[0]= 1 ^ in[0] ^ in[4] ^ in[5] ^ in[6] ^ in[7];
  assign out[1]= 1 ^ in[0] ^ in[1] ^ in[5] ^ in[6] ^ in[7];
  assign out[2]= 0 ^ in[0] ^ in[1] ^ in[2] ^ in[6] ^ in[7];
  assign out[3]= 0 ^ in[0] ^ in[1] ^ in[2] ^ in[3] ^ in[7];
  assign out[4]= 0 ^ in[0] ^ in[1] ^ in[2] ^ in[3] ^ in[4];
  assign out[5]= 1 ^ in[1] ^ in[2] ^ in[3] ^ in[4] ^ in[5];
  assign out[6]= 1 ^ in[2] ^ in[3] ^ in[4] ^ in[5] ^ in[6];
  assign out[7]= 0 ^ in[3] ^ in[4] ^ in[5] ^ in[6] ^ in[7];
endmodule