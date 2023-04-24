;Universidad del valle de Guatemala
;Descripción
;Universidad del Valle de Guatemala
;Facultad de Ingeniería
;Departamento de Ciencias de la Computación
;CC3054 Organización de Computadoras y Assembler Ciclo 1 de 2,023Z
;Laboratorio 07
;Autores:
; - Brandon Reyes Morales 22992
; - Carlos Valladares 221164
.386; el código será compilado para un procesador x86 que soporte el conjunto de instrucciones del procesador 80386 o superior.
.model flat,stdcall;Especifica el modelo de memoria utilizado por el programa.
.stack 4096;El tamaño de la pila reservada para el programa.

.data; Se utiliza para declarar variables globales que se utilizarán en otras partes del programa.
num1 DWORD 1;  Crea una variable llamada num1 que es un número de 32 bits (DWORD) y le asigna el valor inicial de 1.
num2 DWORD 4;  Crea una variable llamada num2 que es también un número de 32 bits (DWORD) y le asigna el valor inicial de 4.
ans DWORD 0;  Crea una variable llamada ans que es un número de 32 bits (DWORD) y le asigna el valor inicial de 0.

.CODE
main PROC;INicia procedimeinto
    mov eax, num1; variable de majeo de datos(mov) utilizar el primer registro de uso general y ese vamos a cargar el valor de una variables (num1) a (eax)
    mov ebx,     num2; variable, con el mov tralado el num2 a ebx
    add eax,ebx; (add) operaciones aritmeticas; esta realizando 4+1
    mov ans, eax;movelr el valor de eax a ans; luego esta guardando eax a ans
    RET ;Es un return que ya termine de trbajar el proceso, debuguear algo que esta adentro del rpoceso, como es la utlima linea papoyeche a colocar RET


    ;eax es un registro de 32 bits
    ;una double word es de 32 bits
main ENDP;termina procedimeinto
END main; Indica el final del cuerpo del código fuente.