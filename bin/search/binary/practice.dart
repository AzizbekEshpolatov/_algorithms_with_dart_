import 'dart:math';

class Solution {
  int search(List<int> nums, int t) {
    int s = 0, e = nums.length - 1;
    while (s <= e) {
      int m = s + (e - s) ~/ 2;
      if (nums[m] == t) {
        return m;
      } else if (nums[m] > t) {
        e = m - 1;
      } else {
        s = m + 1;
      }
    }
    return -1;
  }
} // 704-leetcode

void main() {
  // print(Solution().search([1, 4, 5, 6, 8, 9], 4));
  print(minSubArrayLen([1, 4, 4], 4));
}

int minSubArrayLen(List<int> nums, int target) {
  int left = 0, result = 1000000000, sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
    while (sum >= target) {
      result = min(result, i + 1 - left);
      sum -= nums[left];
      left++;
    }
  }
  return result != 1000000000 ? result : 0;
}
