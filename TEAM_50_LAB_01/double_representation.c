#include <stdio.h>
#include <stdlib.h>

int main()
{
    double a;
    scanf("%lf", &a);
    int ar[64];
    unsigned long long int *p = &a;
    unsigned long long int b = *p;
    for (int i = 63; i >= 0; i--)
    {
        ar[i] = b & 1;
        b >>= 1;
    }

    printf("%d  ", ar[0]);
    for (int i = 1; i < 12; i++)
    {
        printf("%d", ar[i]);
    }

    printf("  ");
    for (int i = 12; i < 64; i++)
    {
        printf("%d", ar[i]);
    }
    printf("\n");
    return 0;
}
