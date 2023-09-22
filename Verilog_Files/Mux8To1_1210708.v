module Mux8To1_1210708 #(parameter n =4) (input signed [n+1:0] a,
									input signed [n+1:0] b,
									input signed [n+1:0] c,
									input signed [n+1:0] d,
									input signed [n+1:0] e,
									input signed [n+1:0] f,
									input signed [n+1:0] g,
									input signed [n+1:0] h,
									input signed [2:0] sel,
									output reg signed [n+1:0]out);
									
	// a multiplexer that choose which is the output 								

  always @(*) begin
    case (sel)
      3'b000: out = a;
      3'b001: out = b;
      3'b010: out = c;
      3'b011: out = d;
      3'b100: out = e;
      3'b101: out = f;
      3'b110: out = g;
      3'b111: out = h;
    endcase
  end

endmodule
