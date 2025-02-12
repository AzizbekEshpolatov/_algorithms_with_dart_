void swapHelper(List<int> ls, int i, int j) {
  int temp = ls[i];
  ls[i] = ls[j];
  ls[j] = temp;
}

int partition(List<int> ls, int high, int low) {
  int i = low - 1;
  int pivot = ls[high];

  for (int j = low; j < high; j++) {
    if (pivot > ls[j]) {
      i++;
      swapHelper(ls, i, j);
    }
  }
  swapHelper(ls, i + 1, high);
  return i + 1;
}

void sortedList(List<int> ls, int high, int low) {
  if (low < high) {
    int pivotIndex = partition(ls, high, low);
    sortedList(ls, high, pivotIndex + 1);
    sortedList(ls, pivotIndex - 1, low);
  }
}

void main() {
  var ls = [2, 41, 4, 0, 10];
  sortedList(ls, ls.length - 1, 0);
  print(ls);
}
