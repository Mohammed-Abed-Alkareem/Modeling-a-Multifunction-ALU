module Nor_1210708 #(parameter n =4) (input signed [n+1:0] x, y,
										output [n+1:0] z);
//A module that assign the output as x nor y
  assign z = ~(x | y);

endmodule
