rm *.o
gcc -c sumC.c
nasm -felf64 sum.asm
gcc sumC.o sum.o -o output
./output