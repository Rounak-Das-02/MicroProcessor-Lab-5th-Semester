#include <stdio.h>

long int patt(int);

int main()
{
    long int n, res;
    printf("Enter the value of n : ");
    scanf("%ld", &n);
    if (n >= 0)
        printf("Sum : %ld", patt(n));
    else
        printf("Wrong input");
}