mov r0,#30h
mov r1,#05h
mov a,@r0
loop:
	mov b,@r0
	cjne a,b,next
	sjmp stop
	next:
		jc stop   ; change this only
		mov a,@r0
	stop:
		inc r0
		djnz r1,loop
mov 38h,a
end