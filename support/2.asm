mov r0,#30h
mov r1,#32h
mov r2,#04h
mov a,r0
cjne a,01h,next
sjmp stop
next: jc rtol

ltor:
	mov a,@r0
	mov @r1,a
	dec r0
	dec r1
	djnz r2,ltor
	stop: sjmp stop
rtol:
	mov a,r0
	add a,r2
	dec a
	mov r0,a
	mov a,r1
	add a,r2
	dec a
	mov r1,a
back:
	mov a,@r0
	mov @r1,a
	dec r0
	dec r1
	djnz r2,back
sjmp $
	