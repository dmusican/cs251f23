#include <stdio.h>
#include <stdlib.h>

// How do work with pointers to functions in C
int add(int x, int y) {
    return x+y;
}

int multiply(int x, int y) {
    return x*y;
}

int doit(function f, int a, int b) {
    return f(a,b);
}


int main() {
    printf("%i\n", doit(add, 3, 5));
    printf("%i\n", doit(multiply, 3, 5));
}
