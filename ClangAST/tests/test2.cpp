#include <iostream>
#include <vector>

int getSum(int a, int b) { return a + b; }

int main(int argc, char *argv[], char *envp[]) {
  int a = 90, b = 80, c = 70;

  while (a > 50) {
    if (a > 1900) {
      a += b;
    } else {
      c = getSum(a, 90);
    }
    a--;
  }

  return 0;
}
