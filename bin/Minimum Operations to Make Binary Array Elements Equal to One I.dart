/*
3191 - masala leetcode


masaladagi shart, massiv beriladi [1,0,1,1,0] -> binary massiv
bizning vazifamiz massivni hamma elementlarini 1ga aylantirish!
eng kam yolni topish kerak
 */
class Solution {
  int minOperations(List<int> nums) {
    int count = 0;
    for (int i = 0; i < nums.length - 2; i++) {
      if (nums[i] == 1) continue;
      for (int j = i; j < i + 3; j++) {
        if (nums[j] == 0) {
          nums[j] = 1;
        } else {
          nums[j] = 0;
        }
      }
      count++;
    }
    return nums.contains(0) ? -1 : count;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.minOperations([0, 1, 1, 1, 0, 0]));
}
