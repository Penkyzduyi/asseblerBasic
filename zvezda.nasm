ection .data ; сегмент данных
userMsg db 'Укажите число: '
lenUserMsg equ $-userMsg ; длина сообщения
displayMsg db 'Ты указал '
lenDispMsg equ $-displayMsg

section .bss ; не используемые данные
    num resb 5
section .text
    global _start ; Сегмент кода

_start: ;Запрашиваем ввод пользователя
    mov eax, 4
    mov ebx, 1
    mov ecx, userMsg ; Переменная
    mov edx, lenUserMsg ; Длинна ввыода записанной в переменной
    int 80h

    mov eax,3 ; Выделаяем память 
    mov ebx, 2
    mov ecx, num  
    mov edx, 5          ; 5 байт информации
    int 80h

    mov eax, 4 ; Выводим наше сообщение
    mov ebx, 1
    mov ecx, displayMsg
    mov edx, lenDispMsg
    int 80h  
     ; Выводим число пользователя
    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 5
    int 80h 

    mov eax, 1 
    mov ebx, 0
    int 80h 
