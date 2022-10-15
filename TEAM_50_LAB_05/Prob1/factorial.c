#include <stdio.h>

long int fact(int);

int main()
{
    long int n, res;
    printf("Enter the value of n : ");
    scanf("%ld", &n);
    if (n >= 0)
        printf("Factorial : %ld", fact(n));
    else
        printf("Wrong input");
}