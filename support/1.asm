MOV r0,#30h
MOV r1,#40h
MOV r2,#05h
loop: MOV A,@r0
	  MOV @r1,A
	  INC r0
	  INC r1
	  DJNZ r2,loop
end