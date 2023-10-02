#include <stdlib.h>

struct LinkedList {
    int value;
    struct LinkedList *next;
};

typedef    struct LinkedList    LinkedList;

LinkedList *insertFrontLL(
    LinkedList *alist, int avalue) {

int main() {
    LinkedList *list = NULL;
    insertFrontLL(list, 12);

    // print list
}
