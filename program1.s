@   program1.s
@   MateoDi9z
@   Version - 1.0.0
@   23/05/2025
@
@   Title - Practica 1
@   Description - Contar los primeros 10 numeros del 1 al 10

.global _start

_start:
    MOV x1, #10 // Contador
    MOV x2, #0  // Acumulador

loop:
    ADD x2, x2, x1  // Sumar i al acumulador
    SUB x1, x1, #1  // Contador--
    CMP x1, #0      // x1 == 0 ?
    B.NE loop       // si no -> loop

    MOV x8, #93     // syscall exit
    MOV x0, #0      // Limpio
    SVC #0          // Fin con error 0 (Sin errores)