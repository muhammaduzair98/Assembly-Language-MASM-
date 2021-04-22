include irvine32.inc
.data
a dword ?
.code
main proc
xor eax,eax
xor ebx,ebx
mov eax, 5             
mov ebx, 3              
sub eax, ebx            
mul eax                 
mov a, eax              
mov eax, 0
mov eax, 0
mov ebx, 0
mov eax, 8              
mov ebx, 3              
sub eax, ebx            
mul eax                 
add eax, a              
mov ebx, 2              
mul ebx                 
mov edx, offset print
call writestring
call writedec
call crlf

exit
main endp
end main
