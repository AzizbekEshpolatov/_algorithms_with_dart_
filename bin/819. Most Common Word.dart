class Solution {
  String mostCommonWord(String paragraph, List<String> banned) {
    List<String> words = paragraph
        .replaceAll(RegExp(r'[^a-zA-Z\s]'), " ")
        .toLowerCase()
        .split(RegExp(r'\s+'));

    Map<String, int> wordCount = {};

    for (String word in words) {
      if (word.isNotEmpty) {
        wordCount[word] = (wordCount[word] ?? 0) + 1;
      }
    }

    for (String ban in banned) {
      wordCount.remove(ban);
    }

    int maxCount = 0;
    String res = "";

    wordCount.forEach((word, count) {
      if (count > maxCount) {
        maxCount = count;
        res = word;
      }
    });

    return res;
  }
}
