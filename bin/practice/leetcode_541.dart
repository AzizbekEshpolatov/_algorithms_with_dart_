class Solution {
  String reverseStr(String s, int k) {
    List<String> arr = s.split('');
    int n = arr.length;
    for(int i=0; i<n; i+= 2*k){
      int left = i,right = i + k - 1 < n ? i + k - 1 : n - 1;
      while(left<right){
        var s = arr[left];
        arr[left]=arr[right];
        arr[right] = s;
        left++;
        right--;
      }
    }
    return arr.join();
  }
}

void main() {
  String s = "abcdefg";
  int k = 2;
  Solution solution = Solution();
  print(solution.reverseStr(s, k)); // Output: "bacdfeg"
}
