#include <stdio.h>

int factorial(int n){

    if(n<=1){
        return 1;
    }
    else{
        return n*factorial(n-1);
    }

}

int main()
{
    int a = 5;
    int fact = factorial(a);
    printf("Factorial of %d is %d",a,fact);
}
