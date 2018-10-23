#include<stdio.h>

int main(void)
{
  printf("Hello, world!");
  return 0;
}

/* Print Hello world without semicolon */

#include<stdio.h> 
#define PRINT printf("Hello World!") 
int main() 
{ 
    if (PRINT) 
    {    } 
} 
