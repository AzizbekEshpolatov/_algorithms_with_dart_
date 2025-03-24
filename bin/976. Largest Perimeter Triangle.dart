class Solution {
  int largestPerimeter(List<int> nums) {
    nums.sort();
    int i = nums.length - 1;

    while (i > 1) {
      if (nums[i] < nums[i - 1] + nums[i - 2]) {
        return nums[i] + nums[i - 1] + nums[i - 2];
      }
      i--;
    }

    return 0;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.largestPerimeter([2, 1, 2]));
}
