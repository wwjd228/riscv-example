int add_elements(int *a, int size)
{
    int sum = 0;
    while (--size >= 0)
        sum += a[size];
    return sum;
}

int main(void)
{
    int a[4] = {1, 2, 3, 4};
    return add_elements(a, 4);
}
