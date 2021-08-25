mov r3,#04h  ;outer loop
mov r5,#00h ; counter for outer loop

loop0:
mov r2,#04h  ; inner loop
mov a,r2
subb a,r5
mov r2,a
mov r4,#00h  ;counter
loop1:
	mov r0,#30h  ; 1st pointer
	mov a,r0
	add a,r4
	mov r0,a
	
	mov r1,a     ; 2nd pointer
 	inc r1
	
	mov a,@r0
	mov b,@r1
	cjne a,b,next
	sjmp back
	next: jc back1
	sjmp back
	back1:
		mov a,@r0
		xch a,@r1
		mov @r0,a
	back:
		inc r4
		djnz r2,loop1
inc r5
djnz r3,loop0
end