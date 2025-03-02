class Solution {
  bool checkIfExist(List<int> arr) {
    Set<int> helper = {};
    for (int number in arr) {
      if (helper.contains(number * 2) ||
          (number % 2 == 0 && helper.contains(number ~/ 2))) {
        return true;
      }
      helper.add(number);
    }

    return false;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.checkIfExist([10, 2, 5, 3]));
}
// leetcode 1346
// 34/67 🎯🚀