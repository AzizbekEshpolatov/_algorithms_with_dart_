class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? current;

  TreeNode? increasingBST(TreeNode? root) {
    TreeNode? dummy = TreeNode(0);
    current = dummy;

    inOrder(root);

    return dummy.right;
  }

  void inOrder(TreeNode? root) {
    if (root == null) return;
    inOrder(root.left);
    current!.right = TreeNode(root.val);
    current = current!.right;

    inOrder(root.right);
  }
}
