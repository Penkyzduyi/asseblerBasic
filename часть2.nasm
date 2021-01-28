section	.text
   global_start     ; должно быть объявлено для линкера
_start:             ; сообщаем линкеру входную точку
	
   ; Пишем имя 'Zara Ali'
   mov	edx,9       ; длина сообщения
   mov	ecx, name   ; сообщение для написания
   mov	ebx,1       ; файловый дескриптор (stdout)
   mov	eax,4       ; номер системного вызова (sys_write)
   int	0x80        ; вызов ядра
	
   mov	[name],  dword 'Nuha'    ; изменяем имя на 'Nuha Ali'
	
   ; Пишем имя 'Nuha Ali'
   mov	edx,8       ; длина сообщения
   mov	ecx,name    ; сообщение для написания
   mov	ebx,1       ; файловый дескриптор (stdout)
   mov	eax,4       ; номер системного вызова (sys_write)
   int	80h         ; вызов ядра
	
   mov	eax,1       ; номер системного вызова (sys_exit)
   int	80h         ; вызов ядра
 
section	.data
name db 'Zara Ali '
