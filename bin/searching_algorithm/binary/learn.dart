/// binary search learning.
/// binary search qollanilishi va qay xollarda ishlatilishi haqida qisqacha.

/// tartiblangan list/array kabi toplamda malumot bir elementni qidirish uchun
/// ishlatiladigan samarali yechim hisoblanadi.
///
/// Ishlash prinsipi
/// royxatning o'rtasidan bir element tanlanadi
/// * Agar qidirilayotgan qiymat o‘rtadagi elementdan kichik bo‘lsa, chap qismda
/// qidirish davom etadi.
/// * Agar qidirilayotgan qiymat o‘rtadagi elementdan katta bo‘lsa, o‘ng qismda
/// qidirish davom etadi.
/// Bu jarayon ro‘yxatni kichik qismlarga bo‘lish orqali takrorlanadi.
///
/// Murakkablik darajaasi:
/// O(log n) – Har bir qadamda qidirish sohasi 2 barobarga qisqaradi.

void main() {
  List<int> numbers = [1, 3, 5, 7, 9, 11, 15, 18, 21, 24];
  int target = 11;

  /// ------ numbers ichidan targetni indexini topishimiz kerak ----------///
  int? result = binarySearchRecursive(numbers, target, 0, numbers.length - 1);
  if (result != null) {
    print("natija : $result");
  } else {
    print("element topilmadi..");
  }
}

int? binarySearchRecursive(List<int> nums, int target, int left, int right) {
  if (left > right) return null;
  int mid = left + (right - left) ~/ 2; //[0:9] 0 + (9-0)~/2 => 4
  // middle number olindi va tekshiriladi.

  if (nums[mid] == target) {
    // targetga teng bolsa shu index qaytaramiz
    return mid;
  } else if (nums[mid] > target) {
    // targetdan katta bolsa
    // start = start
    // end = mid - 1
    return binarySearchRecursive(nums, target, left, mid - 1);
  } else {
    // targetdan kichik bolsa
    // start = mid+1
    // end = end
    return binarySearchRecursive(nums, target, mid + 1, right);
  }
}
