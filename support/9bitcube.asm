MOV R1,#30H
MOV A,@R1
MOV 0F0H,A
MUL AB
MOV R3,0F0H
MOV 0F0H, @R1
MUL AB
MOV 50H,A
MOV R5,0F0H
MOV 0F0H,@R1
MOV A,R3
MUL AB
ADD A,R5
MOV 51H, A
MOV 52H, 0F0H
SJMP $