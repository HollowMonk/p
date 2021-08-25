mov r3,#04h  ;no. of outer loop runs
mov r5,#00h 
 
loop0:
mov r2,#04h
mov a,r2
subb a,r5
mov r2,a
mov r4,#00h  ; counter
loop1:
	mov r0,#30h   ;position of first pointer  
	mov a,r0
	add a,r4
	mov r0,a
	
	mov r1,a      ;pointer of second position
	inc r1
	
	mov a,@r0
	mov b,@r1
	cjne a,b,next
	sjmp loop
	next: jc loop
		mov a,@r0
		xch a,@r1
		mov @r0,a
loop:
	inc r4
	djnz r2,loop1
inc r5
djnz r3,loop0
end

	
	
	
	
	
