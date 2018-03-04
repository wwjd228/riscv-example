int main(void)
{
    int a = 3, b = 4;
    a ^= b;
    b ^= a;
    a ^= b;
    return a;
}
