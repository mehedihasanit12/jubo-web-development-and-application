#include <stdio.h>

int main(){
    int number, i, j, count,z;

    printf("Enter Your Start Point = ");
    scanf("%d", &i);

    printf("Enter Your End Point = ");
    scanf("%d", &number);


    for(i;i<number;i++){

        count=0;
        for(j=2; j<i; j++){
        if(i%j==0){
            count++;
            z+=count;
        }
            }
    if(count==0){
        printf("%d\n", i);
    }

    }

    printf("Prime Number = %d",z/2);

}
