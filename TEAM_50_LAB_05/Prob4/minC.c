#include <stdio.h>

long int min(long int[], int);

int main()
{
    int n;
    printf("Enter the value of n : ");
    scanf("%d", &n);
    long int ar[n];

    for (int i = 0; i < n; i++)
    {
        scanf("%ld", &ar[i]);
    }

    // int n = 4;
    // long int ar[4] = {10, 4, 10, 2};
    printf("Minimum : %ld", min(ar, n));
    return 0;
}