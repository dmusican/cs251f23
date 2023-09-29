#include <stdlib.h>
int main() {

    // array of size 3
    int *c = malloc(3 * sizeof(int));
    for (int j=0; j < 3; j++) {
        c[j] = j;
    }

    int x = 4;
    printf("%i\n", c[x]);
}
