#include <stdio.h>

extern int evenNumbers(int[], int);
extern int oddNumbers(int[], int);
extern int primeNumbers(int[], int);

int main()
{
    int ar[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 7, 6, 2};
    printf("number of even numbers : %d\n", evenNumbers(ar, sizeof(ar) / sizeof(ar[0])));
    printf("number of odd numbers : %d\n", oddNumbers(ar, sizeof(ar) / sizeof(ar[0])));
    printf("number of prime numbers : %d\n", primeNumbers(ar, sizeof(ar) / sizeof(ar[0])));
    return 0;
}