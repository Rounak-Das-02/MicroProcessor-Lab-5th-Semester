#include <stdio.h>

extern int sum(int, int);

int main()
{
    int A = 5;
    int B = 6;
    printf("%d\n", sum(A, B));
    return 0;
}