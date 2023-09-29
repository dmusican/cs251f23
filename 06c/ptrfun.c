#include <stdlib.h>
#include <stdio.h>
int main() {

    // array of size 3
    int *c = malloc(3 * sizeof(int));
    for (int j=0; j < 3; j++) {
        c[j] = j;
    }

    int x = 3;
    int result = c[x];
    printf("The answer should be 2.\n");
    printf("Your answer is %i\n", result);
    printf("%i\n", result);
}
