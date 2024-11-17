#include <stdio.h>

int main()
{
    int i,size,sum=0;
    printf("Enter the size of array = ");
    scanf("%d", &size);

    int arr[size];

    printf("Enter the element of the array = ");

    for(i=0;i<size;i++)
    {
        scanf("%d", &arr[i]);
        sum=sum+arr[i];

    }

    printf("The Sum is %d",sum);

}
