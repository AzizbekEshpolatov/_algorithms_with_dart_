class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isUnivalTree(TreeNode? root) {
    if (root == null) return true;
    return _valid_helper(root.left, root.val) &&
        _valid_helper(root.right, root.val);
  }

  _valid_helper(TreeNode? root, int val) {
    if (root == null) return true;
    if (root.val != val) return false;
    return _valid_helper(root.left, val) && _valid_helper(root.right, val);
  }
}
