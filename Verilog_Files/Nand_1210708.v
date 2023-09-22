module Nand_1210708 #(parameter n =4) (input [n+1:0] x, y,
										output [n+1:0] z);
//A module that assign the output as x nand y
  assign z = ~(x & y);

endmodule
