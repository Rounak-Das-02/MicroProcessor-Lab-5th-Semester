#include <stdio.h>

extern int maxN(int[], int);
extern int minN(int[], int);

int main()
{
    long int numbers[] = {10, 20, 70, 40, 50, 60};
    printf("Max Number is : %ld \n", maxN(numbers, (int)(sizeof(numbers) / sizeof(numbers[0]))));
    printf("Min Number is : %ld \n", minN(numbers, sizeof(numbers) / sizeof(numbers[0])));
    return 0;
}