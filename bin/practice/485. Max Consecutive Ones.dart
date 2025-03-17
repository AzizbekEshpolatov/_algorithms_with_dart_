class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int max_count = 0, count = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        count++;
        max_count = max_count > count ? max_count : count;
      } else {
        count = 0;
      }
    }

    return max_count;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1]));
}
