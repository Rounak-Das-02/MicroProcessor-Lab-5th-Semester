#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void integer_representation(int number, int bits)
{
    if (bits == 0)
        return;
    integer_representation(number >> 1, --bits);
    printf("%d", number & 1);
}

int main()
{
    printf("Enter an integer number : ");
    int num_integer;
    scanf("%d", &num_integer);

    int bits = 32;

    integer_representation(num_integer, bits);
    printf("\n");
    return 0;
}