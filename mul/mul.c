#include <stdio.h>

int mul32(int a, int b)
{
    a *= b;
    return a / 3;
}

long long mul64(long long a, long long b)
{
    a *= b;
    return a / 3;
}

int main(void)
{
    long long a = 5, b = 6;
    int c = 2, d = 9;
    printf("mul64 : %lld\n", mul64(a, b));
    return mul32(c, d);
}
