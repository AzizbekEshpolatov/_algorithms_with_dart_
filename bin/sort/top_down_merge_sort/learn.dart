/// Bottom-Up Merge Sort algoritmini bajaruvi funksiya to'plami.
/// Ushbu kod **rekursiyasiz merge sort** usuli orqali ro‘yxatni tartiblaydi.
/// - **Algoritm:** Bottom-Up Merge Sort
/// - **Murakkablik:** O(n log n) har qanday holatda
/// - **Xotira murakkabligi:** O(n)

/// Asosiy funksiya: **Bottom-Up Merge Sort algoritmini ishga tushiradi.**
///
/// - [arr] - Tartiblanishi kerak bo'lgan ro‘yxat.
void main() {
  var n = [10, 3, 24, 6, 2];
  print(n);
  bottomUpMergeSort(n);
  print(n);
}

void bottomUpMergeSort(List<int> arr) {
  int n = arr.length;
  List<int> temp = List<int>.filled(n, 0); // Yordamchi array

  /// **1, 2, 4, 8, ... bo‘lib segment hajmini oshirib boramiz**
  for (int size = 1; size < n; size *= 2) {
    for (int left = 0; left < n - size; left += 2 * size) {
      int mid = left + size - 1;
      int right = (left + 2 * size - 1 < n) ? left + 2 * size - 1 : n - 1;
      merge(arr, temp, left, mid, right);
    }
  }
}

/// **Ikki tartiblangan qismlarni birlashtiruvchi funksiya.**
///
/// - [arr] - Asosiy ro‘yxat.
/// - [temp] - Yordamchi ro‘yxat.
/// - [left] - Chap segment boshlang‘ich indeksi.
/// - [mid] - O‘rta indeks.
/// - [right] - O‘ng segment oxirgi indeksi.
void merge(List<int> arr, List<int> temp, int left, int mid, int right) {
  int i = left, j = mid + 1, k = left;

  /// **Chap va o‘ng qismlarni birlashtiramiz.**
  while (i <= mid && j <= right) {
    if (arr[i] <= arr[j]) {
      temp[k++] = arr[i++];
    } else {
      temp[k++] = arr[j++];
    }
  }

  /// **Qolgan elementlarni qo‘shamiz.**
  while (i <= mid) temp[k++] = arr[i++];
  while (j <= right) temp[k++] = arr[j++];

  /// **Yangi tartiblangan bo‘lakni asosiy arrayga qaytaramiz.**
  for (int x = left; x <= right; x++) {
    arr[x] = temp[x];
  }
}
