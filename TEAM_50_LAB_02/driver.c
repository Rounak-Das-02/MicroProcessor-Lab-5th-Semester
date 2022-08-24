#include <stdio.h>
#include "addition.c"

extern int add();

int main()
{
    printf("Additon is  %d: \n", add());
    return 0;
}