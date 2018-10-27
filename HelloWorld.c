#include<stdio.h>

int main(void)
{
  printf("Hello, world!");
  return 0;
}

//hello world without main()
//Using a macro that defines main
/*#include<stdio.h> 
#define fun main 
int fun(void) 
{ 
    printf("hello world"); 
    return 0; 
}

Output: hello world */
