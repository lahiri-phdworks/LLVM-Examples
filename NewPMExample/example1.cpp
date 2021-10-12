#include <iostream>
#include <stdio.h>
#include <time.h>

int retval() { return rand() % 5; }

int main() {
  int a, b, c, d, z, p, m, n, arr[5] = {0, 0, 0, 0, 0};
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
            if (i % 6 == 0 && a < d) {
              a = z;
              c = a - d + b;
              std::cout << a << c << std::endl;
            }
            a = m - n;
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