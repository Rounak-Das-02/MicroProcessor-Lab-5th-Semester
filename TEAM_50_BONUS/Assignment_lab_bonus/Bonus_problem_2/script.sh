nasm -felf64 arithmetic.asm
gcc arithmetic.o -o output -no-pie
./output