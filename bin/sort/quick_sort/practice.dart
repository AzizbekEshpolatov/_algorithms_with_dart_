//   List<int> numbers = [34, 7, 23, 32, 5, 62, 32, 2];

void main() {
  List<int> numbers = [34, 7, 23, 32, 5, 62, 32, 2];
  print(numbers);

  sortedLs(numbers, 0, numbers.length - 1);

  print(numbers);
}

void sortedLs(List<int> numbers, int low, int high) {
  if (low < high) {
    int pivot = numbers[high];
    int i = low - 1;

    for (int j = low; j < high; j++) {
      if (pivot > numbers[j]) {
        i++;
        int t = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = t;
      }
    }
    int t = numbers[i + 1];
    numbers[i + 1] = numbers[high];
    numbers[high] = t;
    int pivotIndex = i + 1;
    sortedLs(numbers, low, pivotIndex - 1);
    sortedLs(numbers, pivotIndex + 1, high);
  }
}
