// Testbench S-Box
module test;

  reg clk;
  reg [7:0] inputbyte;
  reg [7:0] outputbyte;
  
  // Instantiate design under test
  RSBox RSBox(.clk(clk), .inputbyte(inputbyte),
          .outputbyte(outputbyte) );
          
  initial begin
    
    $display("Input and clk activated");
    //0
    #00 clk = 1;
    inputbyte = 8'h0f;
    display;
    #10 clk = 0;
    //1
    #10 clk = 1;
    inputbyte = 8'h1e;
    display;
    #10 clk = 0;
    //2
    #10 clk = 1;
    inputbyte = 8'h2d;
    display;
    #10 clk = 0;
    //3
    #10 clk = 1;
    inputbyte = 8'h3c;
    display;
    #10 clk = 0;
    //4
    #10 clk = 1;
    inputbyte = 8'h4b;
    display;
    #10 clk = 0;
    //5
    #10 clk = 1;
    inputbyte = 8'h5a;
    display;
    #10 clk = 0;
    //6
    #10 clk = 1;
    inputbyte = 8'h69;
    display;
    #10 clk = 0;
    //7
    #10 clk = 1;
    inputbyte = 8'h78;
    display;
    #10 clk = 0;
    //8
    #10 clk = 1;
    inputbyte = 8'h87;
    display;
    #10 clk = 0;
    //9
    #10 clk = 1;
    inputbyte = 8'h96;
    display;
    #10 clk = 0;
    //a
    #10 clk = 1;
    inputbyte = 8'ha5;
    display;
    #10 clk = 0;
    //b
    #10 clk = 1;
    inputbyte = 8'hb4;
    display;
    #10 clk = 0;
    //c
    #10 clk = 1;
    inputbyte = 8'hc3;
    display;
    #10 clk = 0;
    //d
    #10 clk = 1;
    inputbyte = 8'hd2;
    display;
    #10 clk = 0;
    //e
    #10 clk = 1;
    inputbyte = 8'he1;
    display;
    #10 clk = 0;
    //f
    #10 clk = 1;
    inputbyte = 8'hf0;
    display;
    #10 clk = 0;
    
  end
  
  task display;
    #5 $display("input:%2h, output:%2h",inputbyte , outputbyte);
  endtask

endmodule
