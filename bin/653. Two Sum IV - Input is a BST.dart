class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

TreeNode? buildTree(List<dynamic> values) {
  if (values.isEmpty || values[0] == null) return null;

  TreeNode root = TreeNode(values[0]);
  List<TreeNode?> queue = [root];
  int i = 1;

  while (queue.isNotEmpty && i < values.length) {
    TreeNode? current = queue.removeAt(0);
    if (i < values.length && values[i] != null) {
      current?.left = TreeNode(values[i]);
      queue.add(current?.left);
    }
    i++;
    if (i < values.length && values[i] != null) {
      current?.right = TreeNode(values[i]);
      queue.add(current?.right);
    }
    i++;
  }

  return root;
}

class Solution {
  bool findTarget(TreeNode? root, int k) {
    // solved soon.
    return false;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findTarget(buildTree([5, 3, 6, 2, 4, null, 7]), 9));
}
