import 'dart:math';

class Solution {
  bool canJump(List<int> nums) {
    int current = 0, maxJumping = 0, index = 0, count = 0;
    while (index < nums.length) {
      maxJumping = max(maxJumping, index + nums[index]);
      if (current >= nums.length - 1) return true;
      if (current < index) return false;
      if (index == current) current = maxJumping;
      index++;
    }
    return true;
  }
}

class Solution1 {
  int maxSubArray(List<int> nums) {
    int maxSubarray = nums[0], currently = 0;
    for (int n in nums) {
      if (currently < 0) {
        currently = 0;
      }
      currently += n;
      maxSubarray = max(maxSubarray, currently);
    }
    return maxSubarray;
  }
}
