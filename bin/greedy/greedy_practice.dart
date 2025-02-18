// leetcode - 316. Remove Duplicate Letters

class Solution {
  String removeDuplicateLetters(String s) {
    String result = '';
    Map<String, int> countingMap = {};
    Set<String> helperItem = {};

    for (int i = 0; i < s.length; i++) {
      String letter = s[i];
      countingMap[letter] = (countingMap[letter] ?? 0) + 1;
    }

    for (int i = 0; i < s.length; i++) {
      String letter = s[i];
      if (helperItem.contains(helperItem)) {
        countingMap[letter] = countingMap[letter]! - 1;
        continue;
      } else {
        while (result.isNotEmpty &&
            result[result.length - 1].compareTo(letter) > 0 &&
            countingMap[result[result.length - 1]]! > 0) {
          helperItem.remove(result[result.length - 1]);
          result = result.substring(0, result.length - 1);
        }
        countingMap[letter] = countingMap[letter]! - 1;
        result += letter;
      }
    }
    return result;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.removeDuplicateLetters("bcabc"));
}
