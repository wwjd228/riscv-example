#include <stdio.h>

extern int fib(long long a);

int main(void)
{
    int i = 0;
    printf("fibonacci number 0 ~ 10\n%d", fib(i++));
    while (i < 11)
        printf(", %d", fib(i++));

    printf("\n");
    return 0;
}
