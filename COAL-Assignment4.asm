include irvine32.inc
.data
 
array byte 2,3,4,-1,-3
m1 byte "Neg(-)",0
m2 byte "Pos(+)",0
m3 byte "Zero00",0
.code
main proc
 
xor eax,eax  ;NULL the register
xor edx,edx  ;NULL the register
xor esi,esi  ;NULL the register
mov esi,0    ;esi for store the current pointer address when when we increment in (ESI)
;start pointing the next one
mov ecx,5
program:
   movsx eax, [array+esi]
   call writeint
   call crlf
   cmp eax,0
   js first
   jns second
   jz third
first:
    mov edx,offset m1
    call writestring
    call crlf
    inc esi
    jmp j1
    
    
second:
    mov edx,offset m2
    call writestring
    call crlf
    inc esi ;increment the address
    jmp j1
third:
    mov edx,offset m3
    call writestring
    call crlf
    inc esi
    jmp j1
j1:    
loop program
 
 
exit
main endp
end main
