class Solution {
  bool isMonotonic(List<int> nums) {
    bool resultOne = false;
    bool resultTwo = false;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i - 1] > nums[i]) resultOne = true;
      if (nums[i - 1] < nums[i])  resultTwo = true;
    }
    return !(resultOne && resultTwo);
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isMonotonic([1, 2, 2, 3]));
}
