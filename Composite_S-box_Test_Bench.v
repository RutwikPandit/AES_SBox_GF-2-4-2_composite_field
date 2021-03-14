
module test();
  reg clk;
  reg [7:0]inputbyte;
  wire [7:0]outputbyte;
  integer i;

  initial begin
    clk = 0;
    repeat (256) 
      begin
        #10 clk= ~clk;
      end
  end
  SBOX SBOX(.in(inputbyte),.out(outputbyte));
  initial
    begin
      for (i = 0; i < 256; i = i + 1) 
        begin
          inputbyte=i;
          #5 $display("input:%2h, output:%2h",inputbyte , outputbyte);
        end
    end
endmodule