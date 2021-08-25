cnt1 equ 30h
mov r0,#cnt1
mov r1,#40h
cnt equ 08h
mov r2,#cnt
l1:mov a,@r0
jb acc.0,od
inc r0
djnz r2,l1
sjmp arng
od:mov a,@r1
xch a,@r0
mov @r1,a
inc r1
inc r0
djnz r2,l1
arng:MOV R2, #(cnt-1) ; Descending order pgm to arrange even elements
LOOP1: MOV R0,#cnt1
MOV R3,#(cnt-1)
LOOP2: MOV A,@R0
INC R0
MOV 50H,@R0
CJNE A, 50H, NEXT
SJMP NEXT1
NEXT: JNC NEXT1
MOV @R0, A
DEC R0
MOV @R0,50H
INC R0
NEXT1: DJNZ R3, LOOP2
DJNZ R2, LOOP1
end 