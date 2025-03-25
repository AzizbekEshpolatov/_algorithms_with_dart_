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
    Set<int> seen = {};
    return dfs(root, k, seen);
  }

  bool dfs(TreeNode? node, int k, Set<int> seen) {
    if (node == null) return false;
    var completed = k - node.val;
    if (seen.contains(completed)) return true;
    seen.add(node.val);
    return dfs(node.left, k, seen) || dfs(node.right, k, seen);
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findTarget(buildTree([5, 3, 6, 2, 4, null, 7]), 9));
}
