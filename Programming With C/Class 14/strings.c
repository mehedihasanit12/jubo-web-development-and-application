#include <stdio.h>

int main()
{
    char str[100];
    int count =1;
    //scanf("%s", &str);
    gets(str);
    puts(str);
    for(int i=0; str[i]!='\0'; i++)
    {
        if(str[i]==' ')
        {
            count++;
        }

    }

    printf("No of Word is= %d",count);
}
