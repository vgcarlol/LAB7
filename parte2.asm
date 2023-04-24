section .data

; Declaración e inicialización de las variables
variable1 db 10       ; Variable de 1 Byte con valor inicial de 10
variable2 db 5        ; Variable de 1 Byte con valor inicial de 5
resultado db 0        ; Variable de 1 Byte que almacenará el resultado de la suma

operando1 dw 200      ; Variable de 2 Bytes con valor inicial de 200
operando2 dw 100      ; Variable de 2 Bytes con valor inicial de 100
resultado1 dw 0       ; Variable de 2 Bytes que almacenará el resultado de la resta

val1 dd 50000         ; Variable de 4 Bytes con valor inicial de 50000
val2 dd 2             ; Variable de 4 Bytes con valor inicial de 2
resultado2 dd 0       ; Variable de 4 Bytes que almacenará el resultado de la multiplicación

section .text
global _start

_start:

; Suma
mov al, [variable1]   ; Carga el valor de la variable1 en el registro al
add al, [variable2]   ; Suma el valor de la variable2 al registro al
mov [resultado], al   ; Almacena el resultado en la variable resultado

; Resta
mov ax, [operando1]   ; Carga el valor de la variable operando1 en el registro ax
sub ax, [operando2]   ; Resta el valor de la variable operando2 al registro ax
mov [resultado1], ax  ; Almacena el resultado en la variable resultado1

; Multiplicación
mov eax, [val1]       ; Carga el valor de la variable val1 en el registro eax
mul dword [val2]      ; Multiplica el valor de la variable val2 con eax
mov [resultado2], eax ; Almacena el resultado en la variable resultado2

; Salida
mov eax, 1            ; Cargar el número de sistema para salir del programa
xor ebx, ebx          ; Valor de retorno 0
int 0x80              ; Llamada al sistema para salir del programa
