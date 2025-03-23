// class Solution {
//   var arr = <int>[];
//
//   TreeNode? _sortedListToBSTHelper(int startIndex, int len) {
//       if (len == 0) {
//           return null;
//       }
//
//       var leftSubtree = _sortedListToBSTHelper(startIndex, len~/2);
//       var rightSubtree = _sortedListToBSTHelper(startIndex + len ~/ 2 + 1, len~/2 - 1 + len%2);
//       return new TreeNode(arr[startIndex + len ~/ 2], leftSubtree, rightSubtree);
//   }
//
//   TreeNode? sortedListToBST(ListNode? head) {
//       var current = head;
//
//       while (current != null) {
//           arr.add(current.val);
//           current = current.next;
//       }
//
//       return _sortedListToBSTHelper(0, arr.length);
//   }
// }