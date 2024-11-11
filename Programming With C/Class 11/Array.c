#include <stdio.h>

int main(){

    int i,sum=0,avarage, marks[5] = {34,65,78,23,65};

    for(i=0;i<5;i++){
            sum = sum + marks[i];

    }
    avarage = sum/i+1;

    printf("marks = %d\nAvarage= %d\n",sum,avarage);

}
