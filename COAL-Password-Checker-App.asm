include irvine32.inc
.data 
	psw BYTE "Fahad12@",0
	str2 byte "YES your password is in right format:",0
	str3 byte " invalid password:",0
	s byte 0
	b byte 0
.code 
main proc
	mov edx,0
	mov esi,0
	mov ecx ,lengthof psw-1
	mov eax,ecx
	call writedec
	call crlf
	cmp eax,8
	jne next1
lop1:
	movzx eax, psw[esi]
	.if eax =='@'
		inc s
		.endif
	.if eax > 64 && eax <91
		inc b
.endif
inc esi
loop lop1
	.if s > 0 && b > 0
		mov edx,offset str2
		call writestring
		call crlf
		jmp down
.endif
next1:
	mov edx,offset str3 
	call writestring 
down:
exit
main endp
end main
