class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, {this.left, this.right});
}
class Solution {
    int rangeSumBST(TreeNode? root, int low, int high) {
        if(root == null) return 0;
        if(root.val < low) {
            return rangeSumBST(root.right,low,high);
        }else if(root.val > high) {
            return rangeSumBST(root.left,low,high);
        }else {
            return root.val + rangeSumBST(root.right,low,high) + rangeSumBST(root.left,low,high);
        }
    }
}


