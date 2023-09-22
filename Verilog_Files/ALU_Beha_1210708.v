module ALU_Beha_1210708 #(parameter n =4) ( input signed [n-1:0] X ,Y,
											input  [2:0] C,
											output reg signed [n+1:0] O);
											
																					
always @(*) begin
    case (C) //make a specific operation based on the selection
      3'b000: O= (X + Y)/2;
      3'b001: O = (X + Y )*2;
      3'b010: O = (X/2)+Y;
      3'b011: O = X - (Y/2);
      3'b100: O = ~(X & Y);
      3'b101: O = ~X;
      3'b110: O =~(X | Y);
      3'b111: O = X ^ Y;
    endcase
  end

endmodule 