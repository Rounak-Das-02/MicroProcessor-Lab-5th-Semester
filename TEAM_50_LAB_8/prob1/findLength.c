#include <stdio.h>
#include <inttypes.h>

int64_t stringLength(char[]);

int main(){
    char str[100];
    printf("Enter the string: ");
    scanf("%[^\n]s",str);

    long length = stringLength(str);
    printf("The length of given string is: %ld\n", length);

    return 0;
}