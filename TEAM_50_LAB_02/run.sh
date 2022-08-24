rm *.o *.i *.s 

gcc -E addition.c | cat >> addition.i
gcc -S addition.i
as addition.s -o addition.o
objdump -d addition.o

gcc -E driver.c | cat >> driver.i
gcc -S driver.i
as driver.s -o driver.o
objdump -d driver.o
gcc driver.o -o driver
./driver


