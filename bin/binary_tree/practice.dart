import 'dart:collection';

class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value, {this.left, this.right});
}

void main() {
  TreeNode root = TreeNode(
    1,
    left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
    right: TreeNode(3, right: TreeNode(6)),
  );
  int target = 2;
  print("target mavjudmi? ${searchWithDfs(root, target) ? "Ha" : "Yoq"}");
  print("target mavjudmi? ${searchWithBfs(root, target) ? "Ha" : "Yoq"}");
}

/// dfs yordamida search qildim sababi nisbatan tree chuqurroq.
bool searchWithDfs(TreeNode? node, int target) {
  if (node == null) return false;
  if (node.value == target) return true;
  return searchWithDfs(node.left, target) || searchWithDfs(node.right, target);
}

/// bfs yordamida ham korib ketamiz
bool searchWithBfs(TreeNode? node, int target) {
  if (node == null) return false;
  Queue<TreeNode> queue = Queue();
  queue.add(node);
  while (queue.isNotEmpty) {
    var current = queue.removeFirst();
    if (current.value == target) return true;
    if (current.left != null) queue.add(current.left!);
    if (current.right != null) queue.add(current.right!);
  }
  return false;
}
