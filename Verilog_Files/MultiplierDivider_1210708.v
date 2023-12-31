module MultiplierDivider_1210708 #(parameter n =4) (input signed [n:0] a,
                           input sel,
                           output reg signed [n+1:0] result);
     //A module that multiply or divide a number by 2  based on selection     
	always @* begin
		if (sel == 0) 
			result = a /2; //divide the number by 2 if the selection is zero
		else 
			result = a * 2;//multiply the number by 2 if the selection is zero
	end

endmodule
