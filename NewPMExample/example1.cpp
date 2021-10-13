#include <iostream>
#include <stdio.h>
#include <time.h>

int retval() { return rand() % 5; }

int main() {
  int a = 0, b = 0, c = 0, d = 0, z = 0, p = 0, m = 0, n = 0,
      arr[5] = {0, 0, 0, 0, 0};
  srand(time(NULL));
  for (int i = 0; i < rand() % 500; i++) {
    if (i % 5 == 0) {
      for (int j = 0; j < 1000; j++) {
        if (rand() % 100 == 10) {
          a = b + 1;
          std::cout << a << c << d << std::endl;
        } else {
          d = c - a;
          z = b;
          a = p - 50;
          std::cout << d << z << a << std::endl;
          if (c < d) {
            c = c - 1;
            a = a + 1;
            std::cout << c << d << a << std::endl;
            a = retval();
            a = m - n;
          }
          for (int k = 90; i > 0; i--) {
            a = a + 1;
            std::cout << a << std::endl;
          }
        }
        a = retval();
        std::cout << j << a << b << c << d << std::endl;
      }
    }
  }

  c = a;
  d = b;
  std::cout << d << c << std::endl;

  return 0;
}