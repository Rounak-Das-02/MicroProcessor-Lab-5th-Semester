nasm -felf64 stringSwap.asm
gcc -S stringMemorySwap.c
as stringMemorySwap.s -o stringMemorySwap.o
gcc stringSwap.o stringMemorySwap.o -o output
./output