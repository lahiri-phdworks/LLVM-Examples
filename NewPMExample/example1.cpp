#include <iostream>
#include <stdio.h>

int retval() { return rand() % 343; }

int main() {
  int a = 213, b = 9837, c = 98;
  a = a + 223;
  b = b + 150;
  int z = a + b * c;
  std::cout << a << " " << b << " " << z << std::endl;
  return 0;
}