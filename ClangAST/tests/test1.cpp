#include <iostream>
#include <vector>

int main() {

  int a = 90;

  while (a > 40) {
    a--;
  }

  if (a > 70) {
    if (a + 8 > 30) {
      a -= 40;
    } else {
      a = a - 90;
    }
  } else {
    int j = 0;
    for (; j < 10; j++) {
      a -= 1;
    }
    a += 90;
  }

  return 0;
}