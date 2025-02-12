/// Quicksort algoritmini bajaruvchi funksiyalar to‘plami.
/// Ushbu kod berilgan ro‘yxatni (list) **tezkor saralash (quicksort)** yordamida
/// tartiblaydi.
/// - **Muallif:** Azizbek Eshpo'latov
/// - **Til:** Dart
/// - **Algoritm:** Quicksort
/// - **Murakkablik:** O(n log n) (o‘rtacha holatda)

/// Quicksort algoritmini ishga tushiruvchi asosiy funksiya.

/// - [list] – Saralanishi kerak bo‘lgan ro‘yxat.
/// - [low] – Boshlang‘ich indeks.
/// - [high] – Oxirgi indeks.

/// Rekursiv tarzda ```quickSort``` chaqirilib, ro‘yxatni tartiblaydi.
void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    /// Pivot indeksini hisoblab, bo‘linish (partition) funksiyasini chaqiramiz.
    int pivotIndex = partition(list, low, high);

    /// Chap va o‘ng qismlarni rekursiv ravishda saralaymiz.
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
}

/// Ajratish (Partition) funksiyasi.

/// - [list] – Saralanayotgan ro‘yxat.
/// - [low] – Boshlang‘ich indeks.
/// - [high] – Oxirgi indeks.

/// Ushbu funksiya **pivot element asosida** ro‘yxatni ikkiga ajratadi
/// va yangi pivot indeksni qaytaradi.
int partition(List<int> list, int low, int high) {
  int pivot = list[high]; // Oxirgi element pivot sifatida olinadi.
  int i = low - 1; // i boshlang‘ichdan oldingi indeksga o‘rnatiladi.

  for (int j = low; j < high; j++) {
    // Agar hozirgi element pivotdan kichik bo‘lsa, o‘rin almashamiz.
    if (list[j] < pivot) {
      i++;
      _swap(list, i, j);
    }
  }

  // Pivotni to‘g‘ri joyiga qo‘yish
  _swap(list, i + 1, high);
  return i + 1;
}

/// Ikki elementni almashtiruvchi yordamchi funksiya.

/// - [list] – Ro‘yxat.
/// - [i] – Birinchi indeks.
/// - [j] – Ikkinchi indeks.

/// Ushbu funksiya **elementlarni o‘zaro joyini almashtirish** uchun ishlatiladi.
void _swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

/// Dastur ishga tushadigan asosiy funksiya.
/// Quicksort-ni chaqirib, natijani ekranga chiqaradi.
void main() {
  List<int> numbers = [34, 7, 23, 32, 5, 62, 32, 2];

  print("Dastlabki ro'yxat: $numbers");

  // Quicksort chaqirilishi
  quickSort(numbers, 0, numbers.length - 1);

  print("Saralangan ro'yxat: $numbers");
}
