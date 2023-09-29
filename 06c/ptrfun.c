#include <stdlib.h>
#include <stdio.h>
int main() {

    // array of size 3
    int *c = malloc(3 * sizeof(int));
    for (int j=0; j < 3; j++) {
        c[j] = j;
    }

    //free(c);

    for (int j=0; j < 3; j++) {
        printf("c[%i] = %i\n", j, c[j]);
    }

/*     int x = 2; */
/*     int result = c[x]; */
/*     printf("The answer should be 2.\n"); */
/*     printf("Your answer is %i\n", result); */
/*     printf("%i\n", result); */

/*     free(c); */
/*     c = malloc(5 * sizeof(int)); */
/*     c[4] = 19; */
/*     free(c); */
}
