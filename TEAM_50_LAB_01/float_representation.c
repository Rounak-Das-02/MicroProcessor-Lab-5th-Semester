#include <stdio.h>
#include <stdlib.h>

int main()
{
    float a;
    scanf("%f", &a);
    int ar[32];
    unsigned long long int *p = &a;
    unsigned long long int b = *p;
    for (int i = 31; i >= 0; i--)
    {
        ar[i] = b & 1;
        b >>= 1;
    }

    printf("%d  ", ar[0]);
    for (int i = 1; i < 9; i++)
    {
        printf("%d", ar[i]);
    }

    printf("  ");
    for (int i = 9; i < 32; i++)
    {
        printf("%d", ar[i]);
    }
    printf("\n");
    return 0;
}
