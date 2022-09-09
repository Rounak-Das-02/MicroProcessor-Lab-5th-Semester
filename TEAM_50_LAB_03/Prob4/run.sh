nasm -felf64 median.asm
gcc -c modeMedian.c
gcc modeMedian.o median.o -o output3
./output3