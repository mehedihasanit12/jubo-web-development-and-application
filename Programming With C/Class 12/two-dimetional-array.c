#include <stdio.h>

int main()
{
    int arr[2][3]= { {10,20,30}, {40,50,60} };

    printf("%d ", arr[0][0]);
    printf("%d ", arr[0][1]);
    printf("%d \n", arr[0][2]);

    printf("%d ", arr[1][0]);
    printf("%d ", arr[1][1]);
    printf("%d \n", arr[1][2]);

    int i, j;

    for(i=0; i<2; i++){
        for(j=0; j<3; j++){
            printf("arr[%d][%d] = %d\n",i,j,arr[i][j]);
        }
    }
}
