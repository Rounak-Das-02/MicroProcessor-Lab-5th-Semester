nasm -felf64 sum.asm
gcc -c summation.c
gcc sum.o summation.o -o output
./output