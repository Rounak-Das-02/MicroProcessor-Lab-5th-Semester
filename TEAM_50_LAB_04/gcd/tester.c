#include <stdio.h>
#include <inttypes.h>

int64_t gcd(int64_t[], int64_t);

int main()
{
    long int n;
    printf("Enter the value of n:\n");
    scanf("%ld", &n);

    long int a[n];
    printf("Enter the array of elements:\n");
    for (long int i = 0; i < n; i++)
    {
        scanf("%ld", &a[i]);
    }

    long int g_n = gcd(a, n);
    printf("\nThe GCD of the given numbers is: %ld\n", g_n);

    return 0;
}
