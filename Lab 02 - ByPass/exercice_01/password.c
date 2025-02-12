#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char password[] = "dddd";

int main (int argc, char* argv[]){
       
    if(strcmp(argv[1],password) == 0)
    {
        printf("Access guaranted\n");
    }

    else
    {
        printf("Bad password\n");
    }

    return 0;
}