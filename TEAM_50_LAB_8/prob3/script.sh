nasm -felf64 stringsSort.asm
gcc -S findSortStrings.c
as findSortStrings.s -o findSortStrings.o
gcc findSortStrings.o stringsSort.o -o output
./output