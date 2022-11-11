rm -rf *.o
gcc -c numEvens.c 
nasm -felf64 evenNumbers.asm
nasm -felf64 oddNumbers.asm
nasm -felf64 primeNumbers.asm
gcc evenNumbers.o oddNumbers.o primeNumbers.o numEvens.o -o output4
./output4
