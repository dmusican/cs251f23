#include <stdlib.h>
#include <stdio.h>

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

void displayLL(LinkedList *list) {
    LinkedList *current = list;
    while (current != NULL) {
        printf("%i\n", current->value);
        current = current->next;
    }
}





void cleanup(LinkedList *list) {
    LinkedList *current = list;
    while (current != NULL) {
        free(current);
        current = current->next;
    }
}


int main() {
    LinkedList *list = NULL;
    list = insertFrontLL(list, 2);
    list = insertFrontLL(list, 7);
    list = insertFrontLL(list, 18);

    // print list
    displayLL(list);
    cleanup(list);
}
