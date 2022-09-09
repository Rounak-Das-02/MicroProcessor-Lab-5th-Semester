nasm -felf64 sum.asm
gcc -c series.c
gcc series.o sum.o -o run
./run