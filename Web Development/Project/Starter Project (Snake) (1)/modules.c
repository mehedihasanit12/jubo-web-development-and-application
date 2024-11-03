  #include <stdio.h>
    
    int main(){
    int multi,divi,sub,a,b;
    printf("Enter Your Number: ");
    scanf("%d",&a);
    printf("Enter Your 2nd Number: ");
    scanf("%d",&b);
    divi = a/b;
    multi = b*divi;
    sub = a-multi;
    if(sub!=0){
    printf("Modulus is %d",sub);
    } else{
    printf("Modulus Not Found!\n Bagfall is %d",divi);
    }
    return 0;
    }