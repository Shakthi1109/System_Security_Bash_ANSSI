#include <stdlib.h>
#include <stdio.h>
#include <string.h>


int main (int argc, char* argv[]){
    
    char password[] = "dddd";
    
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