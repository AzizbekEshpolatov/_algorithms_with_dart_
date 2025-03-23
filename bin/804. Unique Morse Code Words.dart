class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    Set<dynamic> setMorse = {};
    for (int i = 0; i < words.length; i++) {
      List<String> k = [];
      var s = words[i];
      for (int j = 0; j < s.length; j++) {
        if (helperEl.containsKey(s[j])) {
          k.add(helperEl[s[j]]!);
        }
      }
      setMorse.add(k.join(''));
    }
    return setMorse.length;
  }
}

Map<String, String> helperEl = {
  'a': '.-',
  'b': '-...',
  'c': "-.-.",
  'd': '-..',
  'e': ".",
  'f': "..-.",
  'g': "--.",
  'h': "....",
  'i': "..",
  'j': ".---",
  'k': "-.-",
  'l': ".-..",
  'm': "--",
  'n': "-.",
  'o': "---",
  'p': ".--.",
  'q': "--.-",
  'r': ".-.",
  's': "...",
  't': "-",
  'u': "..-",
  'v': "...-",
  'w': ".--",
  'x': "-..-",
  'y': "-.--",
  'z': "--.."
};
void main() {
  Solution solution = Solution();
  print(solution.uniqueMorseRepresentations(["gin", "zen", "gig", "msg"]));
}