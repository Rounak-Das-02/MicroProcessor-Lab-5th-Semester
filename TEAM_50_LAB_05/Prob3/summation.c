#include <stdio.h>

int sum(int[], int);

int main()
{
    int n;
    printf("Enter the value of n : ");
    scanf("%d", &n);
    int ar[n];

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &ar[i]);
    }
    // int n = 4;
    // int ar[4] = {3, 4, 2, 1};

    printf("Sum : %d", sum(ar, n));
    return 0;
}