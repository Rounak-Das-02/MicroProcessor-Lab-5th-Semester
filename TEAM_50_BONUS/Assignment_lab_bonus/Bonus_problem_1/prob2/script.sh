nasm -felf64 even_odd_sort.asm
gcc -S sorting.c
as sorting.s -o sorting.o
gcc even_odd_sort.o sorting.o -o output
./output