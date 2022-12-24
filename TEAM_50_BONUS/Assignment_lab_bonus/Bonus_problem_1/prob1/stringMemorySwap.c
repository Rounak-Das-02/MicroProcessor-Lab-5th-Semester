#include <stdio.h>
#include <inttypes.h>

void stringSwap(char src[][64], char dest[][64], int64_t n);

int main(){
    long n;
    printf("Enter the number of strings: ");
    scanf("%ld", &n);
    
    char src[n][64];
    printf("Enter the strings: \n");
    for(int i=0; i<n; i++){
        scanf(" %[^\n]s", src[i]);
    }

    char dest[n][64];    
    stringSwap(src, dest, n);

    printf("\nThe source base address is: %p\n", src);
    printf("The destination base address is: %p\n\n", dest);
    printf("The strings are: \n");
    for(int i=0; i<n; i++){
        printf("%s\n", dest[i]);
    }
    printf("\n");
    
    return 0;
}