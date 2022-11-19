nasm -felf64 mulMat2.asm
gcc -c MatrixMul2.c
gcc MatrixMul2.o mulMat2.o -o output
./output