# Programitas Assembly
Repo con programas hechos en assembly para aprender en la materia Arquitectura de las computadoras.

## Como probar
En una EC2 de aws ubuntu con ARM, utilizar:

para compilar
```sh
# Compile el programa
$ as -g program1.s -o program1.o
$ ld program1.o -o program1
```

para debugguear
```sh
# Arranque GDB
$ gdb program1
```

### Lista de comandos de GDB
Algunos comandos utiles para usar en gdb
```sh
# Comandos comunes de GDB
(gdb) break _start # Coloca _breakpoint_ en _start
(gdb) break 25 # Coloca breakpoint en linea 25
(gdb) run # ejecuta el program
(gdb) stepi # Ejecuta una instrucción
(gdb) nexti # Salta una instrucción
(gdb) info registers # Muestra todos los registros
(gdb) print $x0 # Muestra el valor de un registro en particular
(gdb) x/10i $pc # Examina las próximas 10 instrucciones
(gdb) x/10xw 0x400000 # Examina 10 palabras de memoria en una dirección
(gdb) layout asm # Muestra disposición assembly
(gdb) layout regs # Muestra registros junto al código
(gdb) continue # Continúa ejecución
(gdb) quit # Sale de GDB
```
