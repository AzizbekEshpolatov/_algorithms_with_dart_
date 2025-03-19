class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    List<int> ls = [];
    Map<int, int> map = {};

    for (int i = 0; i < nums2.length; i++) {
      while (ls.isNotEmpty && nums2[i] > nums2[ls.last]) {
        map[nums2[ls.last]] = nums2[i];
        ls.removeLast();
      }
      ls.add(i);
    }

    List<int> result = [];
    for (int i = 0; i < nums1.length; i++) {
      result.add(map[nums1[i]] ?? -1);
    }
    return result;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.nextGreaterElement([4, 1, 2], [1, 3, 4, 2]));
}
