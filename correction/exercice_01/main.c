#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_CHAR 100

char password[MAX_CHAR] = "THE_CAKE_IS_A_LIE";

int main()
{
    char input[MAX_CHAR];

    printf( "Please enter a password : ");
    scanf("%s",input);

    // comparing strings
    if(strcmp(password, input) !=0){
        printf( "\nBad password.\n");
    }
    else {
        printf( "\nAccess granted.\n");
    }
    return 0;
}
