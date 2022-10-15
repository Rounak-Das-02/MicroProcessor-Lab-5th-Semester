nasm -felf64 patt.asm
gcc -c pattern.c
gcc patt.o pattern.o -o output
./output