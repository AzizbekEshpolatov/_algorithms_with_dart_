// leetcode - 1268
// engine search example
class Solution {
  List<List<String>> suggestedProducts(
      List<String> products, String searchWord) {
    products.sort();
    List<List<String>> result = [];
    String prefix = "";
    for (var s in searchWord.split('')) {
      prefix += s;
      List<String> filtered =
          products.where((e) => e.startsWith(prefix)).toList();
      result.add(filtered.length > 3 ? filtered.sublist(0, 3) : filtered);
    }
    return result;
  }
}
