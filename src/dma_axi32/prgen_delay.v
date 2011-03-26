//---------------------------------------------------------
//-- File generated by RobustVerilog parser
//-- Version: 1.0
//-- Invoked Fri Mar 25 23:34:54 2011
//--
//-- Source file: prgen_delay.v
//---------------------------------------------------------



module prgen_delay(clk,reset,din,dout);
   
   
   input               clk;
   input               reset;
   
   input               din;
   output               dout;
   
   parameter               DELAY = 2;


   reg [DELAY:0]           shift_reg;
   
   always @(posedge clk or posedge reset)
     if (reset)
       shift_reg <= #1 {DELAY+1{1'b0}};
     else
       shift_reg <= #1 {shift_reg[DELAY-1:0], din};

   assign               dout = shift_reg[DELAY-1];
   
   
endmodule


   




