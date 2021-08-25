clr c
mov r0,#30h
mov r1,#40h
mov a,@r0
subb a,@r1
mov 50h,a
Inc r0
Inc r1
mov a,@r0
subb a,@r1
mov 51h,a
end