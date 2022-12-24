#include <stdio.h>
#include <inttypes.h>

void stringReverse(char[], char[]);

int main(){
    char str[100];
    printf("Enter the string: ");
    scanf("%[^\n]s",str);

    char reversed[100];
    stringReverse(str, reversed);
    printf("The reversed string of given string is: %s\n", reversed);

    return 0;
}