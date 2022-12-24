#include <stdio.h>
#include <inttypes.h>

void stringsSort(char ar[][64], int64_t);

int main(){
    long n;
    printf("Enter the number of strings to be sorted: ");
    scanf("%ld", &n);

    if(n == 0){
        printf("Enter a valid number above 0\n");
        return 0;
    }

    char str[n][64];
    printf("Enter the strings: \n");
    for(int i=0; i<n; i++){
        scanf(" %[^\n]s", str[i]);
    }

    stringsSort(str, n);
    
    printf("\nThe sorted order of the strings is:\n");
    for(int i=0; i<n; i++){
        printf("%s\n", str[i]);
    }

    return 0;
}