#include <stdio.h>

int main(){
    int number, i, count =0;

    printf("Enter Your Number = ");
    scanf("%d", &number);

    for(i=2; i<number; i++)
    {
        if(number%i==0){
            printf("The value is %d ",i);
            count++;
        }
    }
    if(count==0){
        printf("Not Prime");
    }
    else{
        printf("Prime");
    }

}
