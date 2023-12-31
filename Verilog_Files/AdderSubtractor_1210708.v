module AdderSubtractor_1210708 #(parameter n =4) (input signed [n+1:0] a, b,
												input sel,
												output reg signed [n+1:0] sum);

//A module that adds or subtract two numbers based on selection
	always @* begin
		if (sel==0)  //adds the two numbers if the selection is zero
			sum = a + b;
		else 
			sum = a - b;//subtract the two numbers if the selection is zero
	end

endmodule
