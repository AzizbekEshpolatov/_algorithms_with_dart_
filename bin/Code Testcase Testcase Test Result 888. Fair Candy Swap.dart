class Solution {
  List<int> fairCandySwap(List<int> aliceSizes, List<int> bobSizes) {
    int aliceSize = sumLs(aliceSizes);
    int bobSize = sumLs(bobSizes);
    int dif = (aliceSize - bobSize) ~/ 2;

    Set<int> setbob = bobSizes.toSet();

    for(int alice in aliceSizes){
      int bobdf = alice - dif;
      if(setbob.contains(bobdf)) return [alice, bobdf];
    }

    return [];
  }

  int sumLs(List<int> k) {
    int sum = 0;
    for (int n in k) sum += n;
    return sum;
  }
}