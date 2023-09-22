# Modeling-a-Multifunction-ALU
implementation of a multifunction arithmetic and logic unit (ALU) using Verilog HDL


# Specifications

Design and implement a multifunction arithmetic and logic unit (ALU) based on the following specifications:
1. X and Y are the inputs of the unit and they are n-bit signed numbers represented in 2’s complement.
2. C is a 3-bit unsigned number and is used to select the operation of the unit (i.e. arithmetic or logical operation).
3. O is the signed ALU output and is represented in 2’s complement. Note that, you are required to define the minimum number of bits needed for O that will make the overflow never occurs in this design.
4. ALU symbol and the supported functions are represented as follow:


 ALU Function Code (C)                                                       |  ALU Output (O) ALU Symbol
:---------------------------------------------------------------:|:---------------------------------------------------------------:
   000  | (X+Y)/2
001 | 2*(X+Y)
010 | (X/2)+Y
011 | X-(Y/2)
100 | X NAND Y
101 | NOT(X)
110 | X NOR Y
111  | X XOR Y


# Author

Mohammed Abed Alkareem
