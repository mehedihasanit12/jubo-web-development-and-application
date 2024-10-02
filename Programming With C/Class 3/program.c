#include <stdio.h>

int main()
{
    /*int a=2, b=3, c=4,equation;
    equation = a*a*a+3*a*a*b+3*a*b*b+b*b*b;
    printf("result= %d\n",equation);*/

    /*int height=20,width=15,area;
    area = height*width;
    printf("Area is = %d\n",area);*/

//    Equation

//    int a,b,c,eqn;
//    a = 3;
//    b = 4;
//    c = 5;
//    eqn = (a*a) + 2*(a*b) + (b*b)+c;
//    printf("Final Output is = %d\n", eqn);

//    int a, b, sum;
//    printf("Enter the value of a = ");
//    scanf("%d",&a);
//    printf("Enter the value of b = ");
//    scanf("%d",&b);
//    sum = a+b;
//
//    printf("Sum of %d and %d is %d\n",a,b,sum);

//    int height,width,area;
//
//    printf("Enter Your height: ");
//    scanf("%d",&height);
//
//    printf("Enter Your width: ");
//    scanf("%d",&width);
//
//    area= height*width;
//
//
//
//    printf("Your Area is = %d",area);

    //Types of C operators

    //Arithmetic operators----+,-/,*,%
    //assignment-----=,+=,-=,a+=10,a=a+10,
    //increment/decrement-----++,--, pre-increment++a,post-increment --a,
    //Relational------=,!=,>,<,>=,<=
    //logical-------
    //

    int x=2, y=5, z=0;
    x++;
    y++;
    printf("%d %d\n",x,y);

    x=y++ + x++;
    printf("%d %d\n",x,y);

    y=++y + ++x;
    printf("%d %d\n",x,y);

    y=++y + x++;
    printf("%d %d\n",x,y);

    y += ++y;
    printf("%d %d\n",x,y);

    y += 1 + (++x);
    printf("%d %d\n",x,y);

    y += 2 + x++;
    printf("%d %d\n",x,y);

}
