#include <stdio.h>

int main(){
  char word[] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd'};

  printf("\n");
  for(int i = 0; i < 12; i++){
    printf("%c", word[i]);
  }
  printf("\n");
}
