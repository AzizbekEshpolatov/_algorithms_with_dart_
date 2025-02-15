/// 1-misol
/// binary tree tuzish
/// Traversal qanday ishlashini tushunish
class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value, {this.left, this.right});
}

/*
    1
   / \
  2   3
 / \   \
4   5   6
 */

/// Inorder Traversal yozish.
/// Inorder – bu daraxtdagi eng asosiy yurib chiqish usuli
void inorderTraversal(TreeNode? node) {
  if (node == null) return;
  inorderTraversal(node.left);
  print(node.value);
  inorderTraversal(node.right);
}

void main() {
  TreeNode root = TreeNode(
    1,
    left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
    right: TreeNode(3, right: TreeNode(6)),
  );
  print("Inorder Traversal:");
  inorderTraversal(root);
}


