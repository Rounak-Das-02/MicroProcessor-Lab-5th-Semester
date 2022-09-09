nasm -felf64 linearS.asm
gcc -c search.c
gcc search.o linearS.o -o run
./run