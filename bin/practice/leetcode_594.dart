import 'dart:math';

class Solution {
  int findLHS(List<int> nums) {
    Map<int, int> fq = {};
    int maxLength = 0;

    for (int n in nums) {
      fq[n] = (fq[n] ?? 0) + 1;
    }

    for (int k in fq.keys) {
      if (fq.containsKey(k + 1)) {
        maxLength = max(maxLength, fq[k]! + fq[k + 1]!);
      }
    }

    return maxLength;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findLHS([1, 2, 5, 2]));
}
