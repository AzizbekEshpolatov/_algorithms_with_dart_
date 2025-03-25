class Solution {
  int findLUSlength(String a, String b) {
    if (a != b) {
      if (a.length > b.length) {
        return a.length;
      } else {
        return b.length;
      }
    } else {
      return -1;
    }
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findLUSlength("aba", "cdc"));
}
