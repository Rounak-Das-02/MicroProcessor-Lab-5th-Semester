nasm -felf64 stringLength.asm
gcc -S findLength.c
as findLength.s -o findLength.o
gcc findLength.o stringLength.o -o output
./output