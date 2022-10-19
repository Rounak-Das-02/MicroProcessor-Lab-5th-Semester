nasm -felf64 add.asm
gcc -c matrixC.c
gcc add.o matrixC.o -o output
./output