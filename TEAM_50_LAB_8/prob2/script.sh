nasm -felf64 stringReverse.asm
gcc -S findReverse.c
as findReverse.s -o findReverse.o
gcc findReverse.o stringReverse.o -o output
./output