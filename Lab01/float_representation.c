#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void printBinary(long n, long bits)
{
    if (bits == 0)
        return;
    printBinary(n >> 1, --bits);
    printf("%ld", n & 1);
}

typedef union
{
    float f;
    struct
    {
        unsigned int sign : 1;
        unsigned int exponent : 8;
        unsigned int mantissa : 23;

    } raw;
} newFloat;

void printIEEE_32(newFloat var)
{
    printf("%d | ", var.raw.sign);
    printBinary(var.raw.exponent, 8);
    printf(" | ");
    printBinary(var.raw.mantissa, 23);
    printf("\n");
}

void float_representation(float number)
{
    newFloat var;
    var.f = number;
    printIEEE_32(var);
}

int main()
{
    float num_float = -12.3;
    printf("Floating Point representaton of %f is \n", num_float);
    float_representation(num_float);
    printf("\n");
    return 0;
}