MOV R1,#50H
MOV A,@R1 //get BCD data byte from RAM location 50h
MOV R2,A //Store in R2
ANL A,#0FH //Get the lower nibble
ORL A,#30H //Add/or with 30h i.e., 0-9 converted to 30-39h
INC R1
MOV @R1,A //Store the lower digit's ASCII code
MOV A,R2 //Get back the number
SWAP A //Swap nibbles in A
ANL A,#0FH //Get the upper BCD digit
ORL A,#30H //Convert to ASCII
INC R1
MOV @R1,A //Store the upper digit's ASCII code
here: sjmp here
END