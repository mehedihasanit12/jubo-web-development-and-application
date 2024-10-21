#include <stdio.h>

main(){
//    int day;
//    printf("Enter the value of day= ");
//    scanf("%d", &day);

//    switch(day)
//    {
//    case 1:
//        printf("Saturday");
//        break;
//    case 2:
//        printf("Sunday");
//        break;
//    default:
//        printf("Wrong number");
//    }

//    int number;
//    printf("Enter your number= ");
//    scanf("%d", &number);
//
//    switch (number%2)
//    {
//    case 0:
//        printf("Even Number");
//        break;
//    case 1:
//        printf("Odd Number");
//        break;
//    }


    int num1, num2;
    char op;

    printf("Enter your operation +,-,*,/= ");
    scanf("%c", &op);

    printf("Enter Number 1= ");
    scanf("%d", &num1);

    printf("Enter Number 2= ");
    scanf("%d", &num2);

    switch (op)
    {
    case '+':
        printf("Sum is = %d", num1+num2);
        break;

    case '-':
        printf("Substraction is = %d", num1-num2);
        break;
    }
    return 0;
}
