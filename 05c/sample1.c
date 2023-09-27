#include <stdio.h>
#include <stdlib.h>

int main() {
    int *x = malloc(sizeof(int0));
    *x = 6;
    printf("%i\n", *x);
    int *y = x;
    printf("%i\n", *y);
    *x = 12;
    printf("%i\n", *x);
    printf("%i\n", *y);
}
