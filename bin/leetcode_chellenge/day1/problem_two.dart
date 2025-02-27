class Solution {
  bool isPalindrome(int x) {
    if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;
    }

    int originalNumber = x;
    int reversed = 0;

    while (x > 0) {
      reversed = reversed * 10 + x % 10;
      x = x ~/ 10;
    }

    return reversed == originalNumber;
  }
}