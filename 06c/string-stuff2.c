#include <stdio.h>
#include <stdlib.h>


int main() {
    char *pet = "dog";
    printf("%s\n", pet);

    pet[0] = 'm';
    printf("%s\n", pet);
}
