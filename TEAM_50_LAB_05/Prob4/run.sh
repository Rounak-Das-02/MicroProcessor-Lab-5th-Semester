nasm -felf64 min.asm
gcc -c minC.c
gcc min.o minC.o -o output
./output