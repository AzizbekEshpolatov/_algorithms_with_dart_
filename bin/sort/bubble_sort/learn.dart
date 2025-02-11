/// bubble sort
/// massiv misolida koramiz.
/// Massivning boshidan boshlab har bir qo‘shni elementlar taqqoslanadi.
/// Agar oldingi element keyingisidan katta bo‘lsa, ular o‘rin almashadi.
/// Ushbu jarayon massiv to‘liq saralangan bo‘lgunga qadar davom etadi.
///
/// vaqt murakkabligi
/// tartibli massiv uchun [O(n)]
/// tartibsiz uchun [O(n2)]
///
/// Xotira sarfi (O(1)) juda kam, chunki massiv o‘zida saralanadi.
/// katta massivlar uchun ishlatilmagani qulayroq.

void bubbleSort(List<int> arr) {
  int n = arr.length;
  bool swapped;

  for (int i = 0; i < n - 1; i++) {
    swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) break;
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print("Saralanishdan oldin: $numbers");
  bubbleSort(numbers);
  print("Saralangandan keyin: $numbers");
}
