#include <stdio.h>

int mode(int[], int);
int median(int[], int);

int main()
{
    int a[] = {10, 20, 30, 40, 50, 60, 70};
    int n = (sizeof(a)/sizeof(a[0]));
    if(n%2 == 0)
     {n = n / 2;
    printf("\nThe median is: %d\n", (median(a, n) + median(a,n+1))/2);
     }
     else
     printf("\nThe median is: %d\n", median(a, (n+1)/2));

    return 0;
}