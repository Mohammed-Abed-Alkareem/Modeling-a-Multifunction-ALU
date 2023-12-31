module ALU_Struct_1210708 #(parameter n =4) ( input signed [n-1:0] X ,Y,
											input  [2:0] C,
											output signed [n+1:0] O);							
	wire signed [n+1:0] Num1 , Num2 , D1  ,D2 , D3, D0	,D4 , D5 , D6 , D7,XplusY,	xdiv , ydiv;
	
//extends the inputs 
	Extension_1210708 extendX(X , Num1);
	Extension_1210708 extendY(Y , Num2);
	
//Adds x and y
	AdderSubtractor_1210708 Add1 (Num1 ,Num2 , 0 , XplusY);
	
//divide x+y by 2
	MultiplierDivider_1210708 div1 (XplusY , 0 ,D0 );
	
	//multiply x+y by 2
	MultiplierDivider_1210708 mul1 (XplusY , 1 ,D1 );

//divide x by 2
	MultiplierDivider_1210708 div2 (Num1 , 0 ,xdiv );

//Adds x/2 and y
	AdderSubtractor_1210708 Add2 (xdiv,Num2 , 0 , D2);
					
//divide y by 2							
	MultiplierDivider_1210708 div3 (Num2 , 0 ,ydiv );							

//subtracts x and y/2											
	AdderSubtractor_1210708 Sub1 (Num1,ydiv , 1 , D3);	

// X nand Y
	Nand_1210708 nand11 (Num1 ,Num2,D4);

// not X 
	Not_1210708 not1 (Num1 ,D5)	;

// X nor Y
	Nor_1210708 nor1 (Num1 ,Num2 ,D6)	;		
					
// X xor Y						
	Xor_1210708 xor1 (Num1 ,Num2 ,D7)	;						
											
				// assign the output based on the selection																									
		Mux8To1_1210708 choose (D0,D1,D2 ,D3 ,D4 , D5,D6 , D7,C , O );											
																					
endmodule  											