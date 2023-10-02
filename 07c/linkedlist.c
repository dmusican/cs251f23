#include <stdlib.h>

struct LinkedList {
    int value;
    struct LinkedList *next;
};

typedef    struct LinkedList    LinkedList;

LinkedList *insertFrontLL(
    LinkedList *alist, int avalue) {

    LinkedList *cell = malloc(sizeof(LinkedList));
    cell->value = avalue;
    cell->next = alist;
    return cell;
}


int main() {
    LinkedList *list = NULL;
    insertFrontLL(list, 12);

    // print list
}
