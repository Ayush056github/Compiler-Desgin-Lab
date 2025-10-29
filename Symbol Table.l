//

#include <stdio.h>
#include <string.h>

#define SIZE 50

struct Symbol {
    char symbol[20];
    int address;
} table[SIZE];

int count = 0;

void insert() {
    if (count == SIZE) {
        printf("\nSymbol Table is Full!\n");
        return;
    }

    char symbol[20];
    int address;
    printf("\nEnter Symbol Name: ");
    scanf("%s", symbol);

    for (int i = 0; i < count; i++) {
        if (strcmp(table[i].symbol, symbol) == 0) {
            printf("Symbol already exists!\n");
            return;
        }
    }

    printf("Enter Address: ");
    scanf("%d", &address);

    strcpy(table[count].symbol, symbol);
    table[count].address = address;
    count++;

    printf("Symbol Inserted Successfully!\n");
}

void delete() {
    char symbol[20];
    int found = 0;

    printf("\nEnter Symbol to Delete: ");
    scanf("%s", symbol);

    for (int i = 0; i < count; i++) {
        if (strcmp(table[i].symbol, symbol) == 0) {
            found = 1;
            for (int j = i; j < count - 1; j++) {
                table[j] = table[j + 1];
            }
            count--;
            printf("Symbol Deleted Successfully!\n");
            break;
        }
    }

    if (!found)
        printf("Symbol Not Found!\n");
}

void display() {
    if (count == 0) {
        printf("\nSymbol Table is Empty!\n");
        return;
    }

    printf("\nSymbol Table:\n");
    printf("-------------------------\n");
    printf("Symbol\t\tAddress\n");
    printf("-------------------------\n");

    for (int i = 0; i < count; i++) {
        printf("%s\t\t%d\n", table[i].symbol, table[i].address);
    }
    printf("-------------------------\n");
}

int main() {
    int choice;

    while (1) {
        printf("\n***** SYMBOL TABLE MENU *****\n");
        printf("1. Insert\n");
        printf("2. Delete\n");
        printf("3. Display\n");
        printf("4. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                insert();
                break;
            case 2:
                delete();
                break;
            case 3:
                display();
                break;
            case 4:
                printf("Exiting Program...\n");
                return 0;
            default:
                printf("Invalid Choice! Try Again.\n");
        }
    }
}
