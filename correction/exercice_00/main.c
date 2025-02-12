#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_CHAR 100

char password[MAX_CHAR] = "MAIN";

int main(int argc, char *argv[])
{
    if (2 != argc) {
        printf( "Execute binary with one password in parameter.\n");
        printf( "i.e: ./test pswd\n");
        return 1;
    }

    // comparing strings
    if(strcmp(password, argv[1]) !=0){
        printf( "\nBad password.\n");
    }
    else {
        printf( "\nAccess granted.\n");
    }
    return 0;
}
