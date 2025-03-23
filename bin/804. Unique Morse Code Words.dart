class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    Map<String,String> helperEl = {
      'a':'.-','b':'-...','c':"-.-.",'d':'-..','e':".",'f':"..-.",'g':"--.",'h':"....",'i':"..",'j':".---",'k':"-.-",'l':".-..",'m':"--",'n':"-.",
      'o':"---",'p':".--.",'q':"--.-",'r':".-.",'s':"...",'t':"-",'u':"..-",'v':"...-",'w':".--",'x':"-..-",'y':"-.--",'z':"--.."
    };
    return 0;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.uniqueMorseRepresentations(["gin","zen","gig","msg"]));
}