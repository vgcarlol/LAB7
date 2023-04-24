.386
.model flat, c
.stack 100h

; Segmento de datos
.data
; Declaración e inicialización de las variables
numeros dw 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ; 10 números enteros de 16 bits
cantidad dd 10 ; Cantidad de números a promediar
promedio dw 0 ; Variable que almacenará el resultado del promedio

; Segmento de código
.code
main proc
; Inicialización de variables
mov esi, OFFSET numeros ; Carga la dirección de la primera variable en el registro esi
mov ecx, cantidad ; Carga la cantidad de números a promediar en el registro ecx
xor ebx, ebx ; Limpiar el registro ebx, que se utilizará para sumar los números

; Suma de los números
suma:
add bx, [esi] ; Suma el valor de la variable actual al registro bx
add esi, 2 ; Incrementa la dirección de memoria en 2 bytes para apuntar a la siguiente variable
loop suma ; Repite el ciclo hasta que se hayan sumado todos los números

; Cálculo del promedio
movzx eax, bx ; Carga el valor de la suma en el registro eax
movzx ebx, word ptr[cantidad] ; Carga la cantidad de números en el registro ebx
xor dx, dx ; Limpiar el registro dx para asegurarse de que no afecte el resultado de la multiplicación
mul bx ; Multiplica la cantidad de números por la suma
movzx ecx, word ptr[cantidad] ; Carga la cantidad de números en el registro ecx
div cx ; Divide el resultado de la multiplicación por la cantidad de números
mov [promedio], ax ; Almacena el resultado del promedio en la variable promedio

; Salida
mov eax, 0 ; Cargar el número de sistema para salir del programa
ret ; Retornar al sistema
main endp
end main
