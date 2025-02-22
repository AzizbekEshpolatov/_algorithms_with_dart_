// learning backtracking
/// Backtracking bu rekursiv yondashuv bo‘lib, u qisman yechimni qurib boradi
/// va agar yo‘l noto‘g‘ri ketayotgan bo‘lsa, ortga qaytib boshqa yo‘ldan
/// harakat qiladi. Bu "Try & Backtrack" printsipiga asoslangan.

/// example.
/*
nums = [1,2,3] berilgan natija sifatida quyidagini hosil qilishimiz kerak
      [[], [1], [2], [3], [1,2], [1,3], [2,3], [1,2,3]]
 */

/// leetcode - 78;
void main() {
  List<int> nums = [1, 2, 3];
  List<List<int>> result = [];

  void backtrack(int start, List<int> current) {
    result.add(List.from(current));
    for (int i = start; i < nums.length; i++) {
      current.add(nums[i]);
      backtrack(i + 1, current);
      current.removeLast();
    }
  }

  backtrack(0, []);
  print(result);
}
