module Not_1210708 #(parameter n =4) (input signed [n+1:0] x,
									output [n+1:0] z);
//A module that assign the output as not(x) 
  assign z = ~(x);

endmodule
