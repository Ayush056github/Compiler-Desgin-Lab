//

#include <stdio.h>

int main() {
    FILE *fp;
    char filename[100];
    int count[256] = {0};
    char ch;

    printf("Enter file name: ");
    scanf("%s", filename);

    fp = fopen(filename, "r");

    if (fp == NULL) {
        printf("Error: File not found!\n");
        return 1;
    }

    while ((ch = fgetc(fp)) != EOF) {
        count[(unsigned char)ch]++;
    }

    fclose(fp);

    printf("\nCharacter Frequency in File:\n");
    for (int i = 0; i < 256; i++) {
        if (count[i] != 0) {
            printf("%c = %d\n", i, count[i]);
        }
    }

    return 0;
}
