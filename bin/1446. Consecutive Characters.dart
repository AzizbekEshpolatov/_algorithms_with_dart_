import 'dart:math';

class Solution {
  int maxPower(String s) {
    int maxL = 0;

    for (int i = 0; i < s.length; i++) {
      int count = 1;
      for (int j = i + 1; j < s.length; j++) {
        if (s[i] == s[j]) {
          count++;
        }else{
          break;
        }
      }
      maxL = max(maxL, count);
    }

    return maxL;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.maxPower("leetcode"));
}
