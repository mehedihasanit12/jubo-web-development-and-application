#include <stdio.h>

int main(){
    int hours,n,seconds,sub,a,b;

    printf("Please Enter the total time in seconds: ");
    scanf("%d",&n);

    a=n/60;  //179
    b=n%60;  //10

    if(b!=0){
        seconds=seconds+b;
    }

    hours=a/60; //2
    b=a%60; //59

    if(b>60){
        sub= b-60;
        seconds=seconds+sub;
    }

    printf("%d Hours %d Minutes %d seconds",hours,b,seconds);
    return 0;

}
