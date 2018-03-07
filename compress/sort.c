#include <stdio.h>
#define ARRAY_SIZE 10

extern void insertion_sort(int *a, int size);

int main(void)
{
    int a[ARRAY_SIZE] = {6, 2, 7, 3, 8, 4, 9, 1, 10, 5};
    insertion_sort(a, ARRAY_SIZE);

    printf("%d", a[0]);
    for ( int i = 1 ; i < ARRAY_SIZE ; i++ )
        printf("-> %d", a[i]);
    printf("\n");
    return 0;
}
