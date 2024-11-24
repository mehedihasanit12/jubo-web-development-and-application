#include <stdio.h>

int main()
{
    int a=20,b=10;

    a=a+b;

    b=a-b;
    a=a-b;

    printf("a = %d\n",a);
    printf("b = %d\n",b);
}
