#include <stdio.h>

extern void addMat(long int[], long int[], long int);

int main()
{
    long int n;
    printf("Enter value of n : ");
    scanf("%ld", &n);
    long int A[n * n], B[n * n];
    for (long int i = 0; i < n; i++)
    {
        for (long int j = 0; j < n; j++)
        {
            A[i * n + j] = i;
            B[i * n + j] = i + j;
        }
    }

    addMat(A, B, n * n);

    for (long int i = 0; i < n; i++)
    {
        for (long int j = 0; j < n; j++)
        {
            printf("\t %ld", A[i * n + j]);
        }
        printf("\n");
    }

    return 0;
}