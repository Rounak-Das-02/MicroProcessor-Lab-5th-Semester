#include <stdio.h>
#include <inttypes.h>

void even_odd_sort(int64_t[], int64_t);

int main(){
    long n;
    printf("Enter the size of the array: ");
    scanf("%ld", &n);

    long a[n];
    printf("Enter the set of integers: \n");
    for(long i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }

    even_odd_sort(a, n);

    printf("\nThe sorted array is: \n");
    for(long i=0; i<n; i++){
        printf("%ld ", a[i]);
    }
    printf("\n");

    return 0;
}