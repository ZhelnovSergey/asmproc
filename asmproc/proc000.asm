.386
.MODEL FLAT, C


PUBLIC CRC16
_TEXT SEGMENT	
	crc16	PROC inBuffer: DWORD, count:DWORD 
	
		xor ecx, ecx
		mov ecx, count

		mov esi, inBuffer
        mov esi, eax
        
        xor eax, eax

  		xor	ebx,ebx
  		mov	ah,00000001b			

_2c:   lods byte ptr [esi]
		xor	bh,al
_3c:	shl	bx,1
		jnc	_4
		xor	bx,1021h
_4:		rol	ah,1
		jnc	_3c
		loop	_2c
		mov	ax,bx
	
	
	ret
	crc16	ENDP
_TEXT ENDS
end