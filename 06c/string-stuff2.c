#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main() {
    /* char *pet = "dog"; */
    /* printf("%s\n", pet); */

    /* pet[0] = 'm'; */
    /* printf("%s\n", pet); */

    // to modify, most use your own array
    char pet[400];
    strcpy(pet, "dog");
    printf("%s\n", pet);
    pet[0] = 'm';
    printf("%s\n", pet);
    printf("%i\n", pet[0]);
    printf("%i\n", pet[4]);
    printf("length is %ul\n",
           strlen(pet));
}
