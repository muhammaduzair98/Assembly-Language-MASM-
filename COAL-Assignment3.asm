include irvine32.inc ;include liberary
.data 
valu byte 21h 
valu2 byte 43h 
valu3 word 8765h
.code
main proc
xor eax,eax  ;Null the register
xor ebx,ebx
call dumpregs
 
mov eax, dword ptr valu
;mov eax, to ptr valu2
;mov eax, byte ptr [valu3+4]
call dumpregs


str1 byte "Step on no pets",0
resut byte 20 dup(?)
.code
main proc
xor eax,eax
xor ebx,ebx
xor ecx,ecx
call dumpregs
mov ecx, lengthof str1
 
l1:
mov edx, offset str1



exit
main endp
end main
