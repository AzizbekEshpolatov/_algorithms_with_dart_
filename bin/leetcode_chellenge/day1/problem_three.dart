class Solution {
  int romanToInt(String s) {
    int sum=0;
    Map<String, int> romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    for(int i=0; i<s.length; i++) {
      int currentValue = romanMap[s[i]]!;
      int nextValue = (i +1 < s.length) ? romanMap[s[i+1]]! : 0;
      if(currentValue < nextValue) {
        sum -= currentValue;
      }else{
        sum += currentValue;
      }
    }

    return sum;
  }
}