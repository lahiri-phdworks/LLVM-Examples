#include <iostream>
#include <vector>

class Main {};
struct DummyStruct {};

int main() {

  int a = 90;

  while (a > 40) {
    a--;
  }
  std::cout << a << "\n";

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
    std::cout << j << "\n";
  }

  return 0;
}