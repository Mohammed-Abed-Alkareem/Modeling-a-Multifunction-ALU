module Extension_1210708 #(parameter n =4) ( input signed [n-1:0] X ,
									output reg signed [n+1:0] O);
									
	//A module that extend the number by 2 bits 								
											
	always @(*) begin 
		if(X[n-1]==0)	//extend the numbers with 2 zeros if the number is positive
			O = { 2'b00, X };	
										
		else 			//extend the numbers with 2 ones if the number is negative
			O = { 2'b11, X };							
						
	end 
endmodule			