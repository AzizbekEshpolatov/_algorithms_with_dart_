class Solution {
  int numOfUnplacedFruits(List<int> fruits, List<int> baskets) {
    List<int> baskets_ls = [...baskets];

    for(int i=0; i<fruits.length; i++){
      for(int j=0;j<baskets_ls.length; j++){
        if(fruits[i]<=baskets_ls[j]) {
          baskets_ls.removeAt(j);
          break;
        }
      }
    }

    return baskets_ls.length;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.numOfUnplacedFruits([4, 2, 5], [3, 5, 4]));
}
