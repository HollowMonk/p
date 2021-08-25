mov r0,#30h
mov r1,#00h ;0
mov r2,#00h ;1
mov r4,#08h
mov a,@r0
again:
	rlc a
	jc next
	inc r1
	sjmp here
	next:inc r2
	here:djnz r4,again
end
