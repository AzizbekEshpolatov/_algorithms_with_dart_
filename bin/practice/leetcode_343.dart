void main() {
  int number = 10; // result 36 = 3*3*4
  print(numberSum(number));
}

int numberSum(int n) {
  if (n == 2 || n == 3) return n - 1;
  int c = 1;
  while (n > 4) {
    c *= 3;
    n -= 3;
  }
  return c * n;
}
