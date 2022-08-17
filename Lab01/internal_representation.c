#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void integer_representation(int number)
{
    int ar[32];
    if (number >= 0)
    {
        for (int i = 0; i < 32; i++)
        {
            ar[31 - i] = (int)(number & 1);
            number = number >> 1;
        }
    }
    else
    {
        int x;
        number = ~number;
        for (int i = 31; i >= 0; i--)
        {
            x = number & (1 << i);
            if (x == 0)
                ar[31 - i] = 1;
            else
                ar[31 - i] = 0;
        }
    }

    for (int i = 0; i < 32; i++)
    {
        printf("%d", ar[i]);
    }
}

void printBinary(long n, long i)
{
    int k;
    for (k = i - 1; k >= 0; k--)
    {

        if ((n >> k) & 1)
            printf("1");
        else
            printf("0");
    }
}

typedef union
{
    float f;
    struct
    {
        unsigned int mantissa : 23;
        unsigned int exponent : 8;
        unsigned int sign : 1;

    } raw;
} myfloat;

void printIEEE_32(myfloat var)
{
    printf("%d | ", var.raw.sign);
    printBinary(var.raw.exponent, 8);
    printf(" | ");
    printBinary(var.raw.mantissa, 23);
    printf("\n");
}

void float_representation(float number)
{
    myfloat var;
    var.f = number;
    printIEEE_32(var);
}

typedef union
{
    double d;
    struct
    {
        unsigned long mantissa : 52;
        unsigned long exponent : 11;
        unsigned long sign : 1;

    } raw;
} mydouble;

void printIEEE_64(mydouble var)
{
    printf("%d | ", var.raw.sign);
    printBinary(var.raw.exponent, 11);
    printf(" | ");
    printBinary(var.raw.mantissa, 52);
}

void double_representation(double number)
{
    mydouble var;
    var.d = number;
    printIEEE_64(var);
}

int main()
{
    int num_integer = -5;
    float num_float = -12.3;
    double num_double = -12.3;
    printf("Integer representaton of %d is ", num_integer);
    integer_representation(num_integer);
    printf("\n");
    printf("Floating Point representaton of %f is ", num_float);
    float_representation(num_float);
    printf("\n");
    printf("Double Point representaton of %f is ", num_double);
    double_representation(num_double);
    return 0;
}