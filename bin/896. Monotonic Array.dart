class Solution {
  bool isMonotonic(List<int> nums) {
    bool resultOne = true;
    bool resultTwo = true;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i - 1] > nums[i]) {
        resultOne = false;
      }
      if (nums[i - 1] < nums[i]) {
        resultTwo = false;
      }
    }
    return !(resultOne && resultTwo);
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isMonotonic([1, 2, 2, 3]));
}
