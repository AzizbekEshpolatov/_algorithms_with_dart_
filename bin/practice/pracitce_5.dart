void main() {
  String reverse(String s) {
    String str = "";
    for (int i = s.length-1; i >= 0; i--) {
      str += s[i];
    }
    return str;
  }

  String str = "abcd";
  String result = reverse(str.substring(0, 2)) + str.substring(2);
  print(result);
}
