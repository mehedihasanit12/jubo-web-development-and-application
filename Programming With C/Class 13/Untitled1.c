#include <stdio.h>

int main()
{
    int i,j,arr1[2][3];
    printf("Enter the value of 2 x 3 Array \n");
    for(i=0;i<2;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("Enter value = ");
            scanf("%d", &arr1[i][j]);
            printf("%d\n",arr1[i][j]);
        }


    }

    printf("The final Array is \n");
    for(i=0; i<2; i++)
    {
        for(j=0;j<3;j++)
        {
            printf("%d\t", arr1[i][j]);
        }
        printf("\n");
    }

}
