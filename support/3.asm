mov r0,#30h
mov r1,#40h
mov r2,#05h

loop:
	mov a,@r0
	xch a,@r1
	mov @r0,a
	inc r0
	inc r1
	djnz r2,loop
end