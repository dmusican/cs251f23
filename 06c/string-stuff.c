#include <stdio.h>
#include <stdlib.h>


int main() {
    /* char pet[3]; */
    char *pet = malloc(4*sizeof(char));
    pet[0] = 'd';
    pet[1] = 'o';
    pet[2] = 'g';
    pet[3] = '\0';
    printf("%s\n", pet);

}
