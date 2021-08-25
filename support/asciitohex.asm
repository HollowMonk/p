MOV R1,#50H
MOV A,@R1 
CLR C
SUBB A,#41H
JC SKIP
SUBB A,#07H
SKIP:SUBB A,#30H
INC R1
MOV @R1,A //Store the hex code
here: sjmp here
END