nasm -felf64 fact.asm
gcc -c factorial.c
gcc fact.o factorial.o -o output
./output