#include <iostream>
#include <stdio.h>
#include <time.h>

int retval() { return rand() % 5; }

int main() {
  int a, b;
  a = retval();
  b = retval();
  a = a + b;
  b = b + 1;
  std::cout << a << " " << b << std::endl;
  return 0;
}