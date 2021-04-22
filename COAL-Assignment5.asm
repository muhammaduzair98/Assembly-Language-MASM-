include irvine32.inc
.data
                str1 byte "fahad",0   ; declair strings
                str2 byte "big letter:",0
                str3 byte "small letter:",0
                upp byte 0
                loww byte 0
.code
main proc   ;main procedure
                xor ecx,ecx
                mov ecx,lengthof str1 -1
                mov esi,0
loop1:
                xor eax,eax
                movzx ax,str1[esi]
                bt ax,6
                call writebin
                call crlf
                jc upper
                jmp lower
upper:
                inc upp
                inc esi                 
                jmp down
lower:
                inc loww
                inc esi                 
                jmp down
down: 
loop loop1
        xor eax,eax
                mov edx,offset str2
                call writestring
                movzx ax,upp
                call writedec
                call crlf
                mov edx,offset str3
                call writestring
                movzx ax,loww
                call writedec
                call crlf
                exit
main endp
end main
