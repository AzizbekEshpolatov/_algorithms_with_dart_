// leetcode 2418 easy solution!
// names = ["Mary","John","Emma"], heights = [180,165,170]

// void main() {
//   List<String> names = ["Mary", "John", "Emma"];
//   List<int> heights = [180, 165, 170];
//
//   Map<dynamic, dynamic> helperMap = {};
//
//   for (int i = 0; i < names.length; i++) {
//     helperMap.addAll({heights[i]: names[i]});
//   }
//
//   var sortedElements = helperMap.keys.toList()
//     ..sort((a, b) => b.compareTo(a));
//
//   List<String> res = [];
//   for(var value in sortedElements){
//     res.add(helperMap[value]);
//   }
//
//   print(res);
// }
void main() {
  List<String> names = ["Mary", "John", "Emma"];
  List<int> heights = [180, 165, 170];

  List<String> sortedNames = List.generate(names.length, (i) => names[i])
    ..sort((a, b) => heights[names.indexOf(b)].compareTo(heights[names.indexOf(a)]));

  print(sortedNames);
}
