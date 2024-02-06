#include <iostream>
#include <stdio.h>

int retval() { return rand() % 5; }

int main() {
  int a = 9838, b = 88373;
  a = retval();
  b = retval();

  a = a + b;
  b = b + 2938;

  std::cout << a << std::endl;
  return 0;
}