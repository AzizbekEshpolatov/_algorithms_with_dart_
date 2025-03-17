/*
Input: num = 100
Output: "202"
 */

class Solution {
  String convertToBase7(int number) {
    if (number == 0) return "0";

    String resultStr = "";

    if (number > 0) {
      while (number > 0) {
        resultStr = (number % 7).toString() + resultStr;
        number = number ~/ 7;
      }
      return resultStr;
    } else {
      bool isNegative = number < 0;
      number = number.abs();
      while (number > 0) {
        resultStr = (number % 7).toString() + resultStr;
        number = number ~/ 7;
      }
      if (isNegative) {
        resultStr = "-$resultStr";
      }
      return resultStr;
    }
  }
}

void main() {
  Solution solution = Solution();
  print(solution.convertToBase7(-7));
}
