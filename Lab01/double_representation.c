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
    double f;
    struct
    {
        unsigned int sign : 1;
        unsigned int exponent : 11;
        unsigned long mantissa : 52;

    } raw;
} newdouble;

void printIEEE_64(newdouble var)
{
    printf("%d | ", var.raw.sign);
    printBinary(var.raw.exponent, 11);
    printf(" | ");
    printBinary(var.raw.mantissa, 52);
    printf("\n");
}

void double_representation(double number)
{
    newdouble var;
    var.f = number;
    printIEEE_64(var);
}

int main()
{
    double num_double = -12.3;
    printf("Double Point representaton of %f is \n", num_double);
    double_representation(num_double);
    printf("\n");
    return 0;
}