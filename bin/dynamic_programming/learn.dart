///  DP odatda rekursiv yondashuv va memoization yoki bottom-up yondashuv
///  yordamida amalga oshiriladi.
///  Muammoning eng kichik yechiladigan shaklini topamiz.
///  Memoization (Top-Down) – Rekursiya + Cache (HashMap yoki List)
///  Tabulation (Bottom-Up) – Iteratsiya + Array (bosqichma-bosqich hisoblash)
///  time complexity:
///  Memoization -> O(n) yoki O(n*m)
///  Tabulation -> O(n) yoki O(n*m)
// Fibonacci

void main() {
  int n = 10;
  print(fibMemo(n, {}));
}

int fibMemo(int n, Map<int, int> memo) {
  if (n <= 1) return n;
  if (memo.containsKey(n)) return memo[n]!;
  memo[n] = fibMemo(n - 1, memo) + fibMemo(n - 2, memo);
  return memo[n]!;
}
