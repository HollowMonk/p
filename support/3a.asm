;Xchanging block of data byte in external memory location
;mov dptr,#9000h
;mov r1,#30h
;mov r2,#05h

;back:
;	movx a,@dptr
;	mov @r1,a
;	inc r1
;	inc dptr
;	djnz r2,back
;mov dptr,#9010h
;mov r1,#30h
;mov r2,#05h

;back1:
;	 movx a,@dptr
;	 xch a,@r1
;	 movx @dptr,a
;	 inc dptr
;	 inc r1
;	 djnz r2,back1
;mov dptr,#9000h
;mov r1,#30h
;mov r2,#05h

;back2:
;	mov a,@r1
;	movx @dptr,a
;	inc r1
;	inc dptr
;	djnz r2,back2
;end

;xchanging data in external memory
;mov dptr,#9000h
;movx a,@dptr
;mov r0,a
;inc dptr
;movx a,@dptr
;xch a,r0
;movx @dptr,a
;dec 82h
;mov a,r0
;movx @dptr,a
;loop: sjmp loop

; transfer block of data from external to internal
;mov dptr,#9000h
;mov r1,#30h
;mov r2,#05h
;back:
;	movx a,@dptr
;	mov @r1,a
;	inc dptr
;	inc r1
;	djnz r2,back
;end
