// Design
// AES S-box Look up method
module RSBox (clk , inputbyte , outputbyte);
input clk;
input  reg [7:0] inputbyte;
output reg [7:0] outputbyte;

always @(posedge clk)
  begin
    case(inputbyte)
      
      //63 7c 77 7b f2 6b 6f c5 30 01 67 2b fe d7 ab 76 
      8'h00 : outputbyte = 8'h63;
      8'h01 : outputbyte = 8'h7c;
      8'h02 : outputbyte = 8'h77;
      8'h03 : outputbyte = 8'h7b;
      8'h04 : outputbyte = 8'hf2;
      8'h05 : outputbyte = 8'h6b;
      8'h06 : outputbyte = 8'h6f;
      8'h07 : outputbyte = 8'hc5;
      8'h08 : outputbyte = 8'h30;
      8'h09 : outputbyte = 8'h01;
      8'h0a : outputbyte = 8'h67;
      8'h0b : outputbyte = 8'h2b;
      8'h0c : outputbyte = 8'hfe;
      8'h0d : outputbyte = 8'hd7;
      8'h0e : outputbyte = 8'hab;
      8'h0f : outputbyte = 8'h76;
      
      //ca 82 c9 7d fa 59 47 f0 ad d4 a2 af 9c a4 72 c0 
      8'h10 : outputbyte = 8'hca;
      8'h11 : outputbyte = 8'h82;
      8'h12 : outputbyte = 8'hc9;
      8'h13 : outputbyte = 8'h7d;
      8'h14 : outputbyte = 8'hfa;
      8'h15 : outputbyte = 8'h59;
      8'h16 : outputbyte = 8'h47;
      8'h17 : outputbyte = 8'hf0;
      8'h18 : outputbyte = 8'had;
      8'h19 : outputbyte = 8'hd4;
      8'h1a : outputbyte = 8'ha2;
      8'h1b : outputbyte = 8'haf;
      8'h1c : outputbyte = 8'h9c;
      8'h1d : outputbyte = 8'ha4;
      8'h1e : outputbyte = 8'h72;
      8'h1f : outputbyte = 8'hc0;
      
      //b7 fd 93 26 36 3f f7 cc 34 a5 e5 f1 71 d8 31 15 
      8'h20 : outputbyte = 8'hb7;
      8'h21 : outputbyte = 8'hfd;
      8'h22 : outputbyte = 8'h93;
      8'h23 : outputbyte = 8'h26;
      8'h24 : outputbyte = 8'h36;
      8'h25 : outputbyte = 8'h3f;
      8'h26 : outputbyte = 8'hf7;
      8'h27 : outputbyte = 8'hcc;
      8'h28 : outputbyte = 8'h34;
      8'h29 : outputbyte = 8'ha5;
      8'h2a : outputbyte = 8'he5;
      8'h2b : outputbyte = 8'hf1;
      8'h2c : outputbyte = 8'h71;
      8'h2d : outputbyte = 8'hd8;
      8'h2e : outputbyte = 8'h31;
      8'h2f : outputbyte = 8'h15;
      
      //04 c7 23 c3 18 96 05 9a 07 12 80 e2 eb 27 b2 75 
      8'h30 : outputbyte = 8'h04;
      8'h31 : outputbyte = 8'hc7;
      8'h32 : outputbyte = 8'h23;
      8'h33 : outputbyte = 8'hc3;
      8'h34 : outputbyte = 8'h18;
      8'h35 : outputbyte = 8'h96;
      8'h36 : outputbyte = 8'h05;
      8'h37 : outputbyte = 8'h9a;
      8'h38 : outputbyte = 8'h07;
      8'h39 : outputbyte = 8'h12;
      8'h3a : outputbyte = 8'h80;
      8'h3b : outputbyte = 8'he2;
      8'h3c : outputbyte = 8'heb;
      8'h3d : outputbyte = 8'h27;
      8'h3e : outputbyte = 8'hb2;
      8'h3f : outputbyte = 8'h75;
      
      //09 83 2c 1a 1b 6e 5a a0 52 3b d6 b3 29 e3 2f 84 
      8'h40 : outputbyte = 8'h09;
      8'h41 : outputbyte = 8'h83;
      8'h42 : outputbyte = 8'h2c;
      8'h43 : outputbyte = 8'h1a;
      8'h44 : outputbyte = 8'h1b;
      8'h45 : outputbyte = 8'h6e;
      8'h46 : outputbyte = 8'h5a;
      8'h47 : outputbyte = 8'ha0;
      8'h48 : outputbyte = 8'h52;
      8'h49 : outputbyte = 8'h3b;
      8'h4a : outputbyte = 8'hd6;
      8'h4b : outputbyte = 8'hb3;
      8'h4c : outputbyte = 8'h29;
      8'h4d : outputbyte = 8'he3;
      8'h4e : outputbyte = 8'h2f;
      8'h4f : outputbyte = 8'h84;
      
      //53 d1 00 ed 20 fc b1 5b 6a cb be 39 4a 4c 58 cf 
      8'h50 : outputbyte = 8'h53;
      8'h51 : outputbyte = 8'hd1;
      8'h52 : outputbyte = 8'h00;
      8'h53 : outputbyte = 8'hed;
      8'h54 : outputbyte = 8'h20;
      8'h55 : outputbyte = 8'hfc;
      8'h56 : outputbyte = 8'hb1;
      8'h57 : outputbyte = 8'h5b;
      8'h58 : outputbyte = 8'h6a;
      8'h59 : outputbyte = 8'hcb;
      8'h5a : outputbyte = 8'hbe;
      8'h5b : outputbyte = 8'h39;
      8'h5c : outputbyte = 8'h4a;
      8'h5d : outputbyte = 8'h4c;
      8'h5e : outputbyte = 8'h58;
      8'h5f : outputbyte = 8'hcf;
      
      //d0 ef aa fb 43 4d 33 85 45 f9 02 7f 50 3c 9f a8 
      8'h60 : outputbyte = 8'hd0;
      8'h61 : outputbyte = 8'hef;
      8'h62 : outputbyte = 8'haa;
      8'h63 : outputbyte = 8'hfb;
      8'h64 : outputbyte = 8'h43;
      8'h65 : outputbyte = 8'h4d;
      8'h66 : outputbyte = 8'h33;
      8'h67 : outputbyte = 8'h85;
      8'h68 : outputbyte = 8'h45;
      8'h69 : outputbyte = 8'hf9;
      8'h6a : outputbyte = 8'h02;
      8'h6b : outputbyte = 8'h7f;
      8'h6c : outputbyte = 8'h50;
      8'h6d : outputbyte = 8'h3c;
      8'h6e : outputbyte = 8'h9f;
      8'h6f : outputbyte = 8'ha8;
      
      //51 a3 40 8f 92 9d 38 f5 bc b6 da 21 10 ff f3 d2 
      8'h70 : outputbyte = 8'h51;
      8'h71 : outputbyte = 8'ha3;
      8'h72 : outputbyte = 8'h40;
      8'h73 : outputbyte = 8'h8f;
      8'h74 : outputbyte = 8'h92;
      8'h75 : outputbyte = 8'h9d;
      8'h76 : outputbyte = 8'h38;
      8'h77 : outputbyte = 8'hf5;
      8'h78 : outputbyte = 8'hbc;
      8'h79 : outputbyte = 8'hb6;
      8'h7a : outputbyte = 8'hda;
      8'h7b : outputbyte = 8'h21;
      8'h7c : outputbyte = 8'h10;
      8'h7d : outputbyte = 8'hff;
      8'h7e : outputbyte = 8'hf3;
      8'h7f : outputbyte = 8'hd2;
      
      //cd 0c 13 ec 5f 97 44 17 c4 a7 7e 3d 64 5d 19 73 
      8'h80 : outputbyte = 8'hcd;
      8'h81 : outputbyte = 8'h0c;
      8'h82 : outputbyte = 8'h13;
      8'h83 : outputbyte = 8'hec;
      8'h84 : outputbyte = 8'h5f;
      8'h85 : outputbyte = 8'h97;
      8'h86 : outputbyte = 8'h44;
      8'h87 : outputbyte = 8'h17;
      8'h88 : outputbyte = 8'hc4;
      8'h89 : outputbyte = 8'ha7;
      8'h8a : outputbyte = 8'h7e;
      8'h8b : outputbyte = 8'h3d;
      8'h8c : outputbyte = 8'h64;
      8'h8d : outputbyte = 8'h5d;
      8'h8e : outputbyte = 8'h19;
      8'h8f : outputbyte = 8'h73;
      
      //60 81 4f dc 22 2a 90 88 46 ee b8 14 de 5e 0b db 
      8'h90 : outputbyte = 8'h60;
      8'h91 : outputbyte = 8'h81;
      8'h92 : outputbyte = 8'h4f;
      8'h93 : outputbyte = 8'hdc;
      8'h94 : outputbyte = 8'h22;
      8'h95 : outputbyte = 8'h2a;
      8'h96 : outputbyte = 8'h90;
      8'h97 : outputbyte = 8'h88;
      8'h98 : outputbyte = 8'h46;
      8'h99 : outputbyte = 8'hee;
      8'h9a : outputbyte = 8'hb8;
      8'h9b : outputbyte = 8'h14;
      8'h9c : outputbyte = 8'hde;
      8'h9d : outputbyte = 8'h5e;
      8'h9e : outputbyte = 8'h0b;
      8'h9f : outputbyte = 8'hdb;
      
      //e0 32 3a 0a 49 06 24 5c c2 d3 ac 62 91 95 e4 79 
      8'ha0 : outputbyte = 8'he0;
      8'ha1 : outputbyte = 8'h32;
      8'ha2 : outputbyte = 8'h3a;
      8'ha3 : outputbyte = 8'h0a;
      8'ha4 : outputbyte = 8'h49;
      8'ha5 : outputbyte = 8'h06;
      8'ha6 : outputbyte = 8'h24;
      8'ha7 : outputbyte = 8'h5c;
      8'ha8 : outputbyte = 8'hc2;
      8'ha9 : outputbyte = 8'hd3;
      8'haa : outputbyte = 8'hac;
      8'hab : outputbyte = 8'h62;
      8'hac : outputbyte = 8'h91;
      8'had : outputbyte = 8'h95;
      8'hae : outputbyte = 8'he4;
      8'haf : outputbyte = 8'h79;
      
      //e7 c8 37 6d 8d d5 4e a9 6c 56 f4 ea 65 7a ae 08 
      8'hb0 : outputbyte = 8'he7;
      8'hb1 : outputbyte = 8'hc8;
      8'hb2 : outputbyte = 8'h37;
      8'hb3 : outputbyte = 8'h6d;
      8'hb4 : outputbyte = 8'h8d;
      8'hb5 : outputbyte = 8'hd5;
      8'hb6 : outputbyte = 8'h4e;
      8'hb7 : outputbyte = 8'ha9;
      8'hb8 : outputbyte = 8'h6c;
      8'hb9 : outputbyte = 8'h56;
      8'hba : outputbyte = 8'hf4;
      8'hbb : outputbyte = 8'hea;
      8'hbc : outputbyte = 8'h65;
      8'hbd : outputbyte = 8'h7a;
      8'hbe : outputbyte = 8'hae;
      8'hbf : outputbyte = 8'h08;
      
      //ba 78 25 2e 1c a6 b4 c6 e8 dd 74 1f 4b bd 8b 8a 
      8'hc0 : outputbyte = 8'hba;
      8'hc1 : outputbyte = 8'h78;
      8'hc2 : outputbyte = 8'h25;
      8'hc3 : outputbyte = 8'h2e;
      8'hc4 : outputbyte = 8'h1c;
      8'hc5 : outputbyte = 8'ha6;
      8'hc6 : outputbyte = 8'hb4;
      8'hc7 : outputbyte = 8'hc6;
      8'hc8 : outputbyte = 8'he8;
      8'hc9 : outputbyte = 8'hdd;
      8'hca : outputbyte = 8'h74;
      8'hcb : outputbyte = 8'h1f;
      8'hcc : outputbyte = 8'h4b;
      8'hcd : outputbyte = 8'hbd;
      8'hce : outputbyte = 8'h8b;
      8'hcf : outputbyte = 8'h8a;
      
      //70 3e b5 66 48 03 f6 0e 61 35 57 b9 86 c1 1d 9e 
      8'hd0 : outputbyte = 8'h70;
      8'hd1 : outputbyte = 8'h3e;
      8'hd2 : outputbyte = 8'hb5;
      8'hd3 : outputbyte = 8'h66;
      8'hd4 : outputbyte = 8'h48;
      8'hd5 : outputbyte = 8'h03;
      8'hd6 : outputbyte = 8'hf6;
      8'hd7 : outputbyte = 8'h0e;
      8'hd8 : outputbyte = 8'h61;
      8'hd9 : outputbyte = 8'h35;
      8'hda : outputbyte = 8'h57;
      8'hdb : outputbyte = 8'hb9;
      8'hdc : outputbyte = 8'h86;
      8'hdd : outputbyte = 8'hc1;
      8'hde : outputbyte = 8'h1d;
      8'hdf : outputbyte = 8'h9e;
      
      //e1 f8 98 11 69 d9 8e 94 9b 1e 87 e9 ce 55 28 df 
      8'he0 : outputbyte = 8'he1;
      8'he1 : outputbyte = 8'hf8;
      8'he2 : outputbyte = 8'h98;
      8'he3 : outputbyte = 8'h11;
      8'he4 : outputbyte = 8'h69;
      8'he5 : outputbyte = 8'hd9;
      8'he6 : outputbyte = 8'h8e;
      8'he7 : outputbyte = 8'h94;
      8'he8 : outputbyte = 8'h9b;
      8'he9 : outputbyte = 8'h1e;
      8'hea : outputbyte = 8'h87;
      8'heb : outputbyte = 8'he9;
      8'hec : outputbyte = 8'hce;
      8'hed : outputbyte = 8'h55;
      8'hee : outputbyte = 8'h28;
      8'hef : outputbyte = 8'hdf;
      
      //8c a1 89 0d bf e6 42 68 41 99 2d 0f b0 54 bb 16 
      8'hf0 : outputbyte = 8'h8c;
      8'hf1 : outputbyte = 8'ha1;
      8'hf2 : outputbyte = 8'h89;
      8'hf3 : outputbyte = 8'h0d;
      8'hf4 : outputbyte = 8'hbf;
      8'hf5 : outputbyte = 8'he6;
      8'hf6 : outputbyte = 8'h42;
      8'hf7 : outputbyte = 8'h68;
      8'hf8 : outputbyte = 8'h41;
      8'hf9 : outputbyte = 8'h99;
      8'hfa : outputbyte = 8'h2d;
      8'hfb : outputbyte = 8'h0f;
      8'hfc : outputbyte = 8'hb0;
      8'hfd : outputbyte = 8'h54;
      8'hfe : outputbyte = 8'hbb;
      8'hff : outputbyte = 8'h16;
      
    endcase
  end
endmodule




