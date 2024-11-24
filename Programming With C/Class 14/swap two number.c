#include <stdio.h>

int main()
{
    int a=20,b=10;

    printf("Before Swap\n a = %d\n b = %d\n", a,b);

    a=a+b;

    b=a-b;
    a=a-b;

    printf("After Swap\n a = %d\n b = %d\n",a,b);
}
