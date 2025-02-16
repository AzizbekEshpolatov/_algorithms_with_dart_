class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value, {this.left, this.right});
}

/// list sort with binary tree

void main() {
  List<int> numbers = [8, 3, 10, 1, 6, 14, 4, 7];
  TreeNode? root;
  for (int n in numbers) {
    root = insertNode(root, n);
  }
  print("Tartiblangan royxat:");
  inorderNodes(root);
}

// insert
TreeNode? insertNode(TreeNode? node, int value) {
  if (node == null) return TreeNode(value);
  if (value < node.value) {
    node.left = insertNode(node.left, value);
  } else if (node.value < value) {
    node.right = insertNode(node.right, value);
  }
  return node;
}

// traversal
void inorderNodes(TreeNode? node) {
  if (node == null) return;
  inorderNodes(node.left);
  print(node.value);
  inorderNodes(node.right);
}
