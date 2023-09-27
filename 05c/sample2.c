// BEWARE BEWARE BEWARE
#include <stdio.h>
#include <stdlib.h>

// (but sometimes useful)

int main() {
    int x = 6;
    printf("%i\n", x);

    int *y = &x;   // address of x
    *y = 12;
    printf("%i\n", x);
}
