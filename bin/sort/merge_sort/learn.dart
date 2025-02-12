/// Merge Sort algoritmini bajaruvi funksiya to'plami.
/// Ushbu kod **rekursiv merge sort** usuli orqali ro‘yxatni tartiblaydi.
/// - **Murakkablik:** O(n log n) har qanday holatda
/// - **Xotira murakkabligi:** O(n)
/// Asosiy funksiya: **Merge Sort algoritmini ishga tushiradi.**
/// - [arr] - Tartiblanishi kerak bo'lgan ro‘yxat.

List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) return arr; // Bazaviy holat
  int mid = arr.length ~/ 2; // Ro‘yxatni ikkiga bo‘lamiz
  /// **Chap va o‘ng qismlarni rekursiv ravishda tartiblaymiz.**
  List<int> left = mergeSort(arr.sublist(0, mid));
  List<int> right = mergeSort(arr.sublist(mid));
  /// **Tartiblangan qismlarni birlashtiramiz.**
  return merge(left, right);
}

/// **Ikki tartiblangan qismlarni birlashtiruvchi funksiya.**
/// - [left] - Tartiblangan chap qism.
/// - [right] - Tartiblangan o‘ng qism.

/// **Natija:** Tartiblangan umumiy ro‘yxat.
List<int> merge(List<int> left, List<int> right) {
  List<int> merged = [];
  int i = 0, j = 0;

  /// **Chap va o‘ng qismlarni solishtirib qo‘shamiz.**
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      merged.add(left[i++]);
    } else {
      merged.add(right[j++]);
    }
  }

  /// **Qolgan elementlarni qo‘shamiz.**
  while (i < left.length) {
    merged.add(left[i++]);
  }
  while (j < right.length) {
    merged.add(right[j++]);
  }

  return merged;
}
