include irvine32.inc
.data 
str1 BYTE "Fahad Chaudhry",0
key BYTE -4, 8, 2, 1, -3, 0, 2, -5, -4, 7
.code  
main proc
call encrypt   ;call encryption of the name
call decrypt   ;calling the simple de ecrypted name
exit
main endp

encrypt proc
mov ecx,lengthof str1-1
mov edi,0
mov esi,0
l1: 
push ecx 
.if edi < 10
  .if key[edi]<0
  
   mov cl,key[edi]
   rol str1[esi],cl
  .elseif key[edi]>=0
   mov al,key[edi]
   ror str1[esi],cl
   .endif
.else
 mov edi ,-1
.endif
 inc esi
 inc edi
pop ecx
loop l1
encrypt endp

decrypt proc
mov edx,offset str1
call writestring
call crlf

mov esi,0
mov edi,0
mov ecx,lengthof str1-1
l2:
push ecx
.if edi < 10
  .if key[edi]<0
  
   mov cl,key[edi]
   ror str1[esi],cl
  .elseif key[edi]>=0
   mov al,key[edi]
   rol str1[esi],cl
   .ENDIF
.else
 mov edi ,-1
.endif
 inc esi
 inc edi
pop ecx
loop l2
mov edx,offset str1
call writestring
decrypt endp
exit
end main
