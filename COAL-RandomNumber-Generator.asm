INCLUDE irvine32.inc


.data
msg byte "Genrating 10 number",0
.code
main PROC
	mov edx,offset msg
	call WriteString
	call crlf
	call readint
	call crlf
	mov ecx,10
L1:
	mov eax,+33
	call RandomRange
	call writeDec
	call crlf
loop L1


exit
main endp
end main