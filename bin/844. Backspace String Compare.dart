class Solution {
  bool backspaceCompare(String s, String t) {
    return _helperStr(s) == _helperStr(t);
  }

  _helperStr(String str) {
    List<String> arr = [];

    for(int i=0; i<str.length; i++){
      if(str[i] != '#') arr.add(str[i]);
      else if(arr.isNotEmpty) arr.removeLast();
    }

    return arr.join();
  }
}