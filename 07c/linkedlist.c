#include <stdlib.h>

struct LinkedList {
    int value;
    struct LinkedList *next;
};

typedef    struct LinkedList    LinkedList;


int main() {
    LinkedList *list = NULL;
    insertFrontLL(list, 12);

    // print list
}
