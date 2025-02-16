import 'dart:collection';
import 'dart:math';

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

void main() {
  TreeNode root = TreeNode(
    1,
    left: TreeNode(
      2,
      left: TreeNode(4),
      right: TreeNode(5),
    ),
    right: TreeNode(3, right: TreeNode(6)),
  );
  // print("Inorder Traversal:");
  // inorderTraversal(root);
  // print("binary tree height:${heightBinaryTree(root)}");
  // print("binary tree nodes count:${countNode(root)}");
  // print("binary tree count leaf nodes:${countLeafNodes(root)}");
  // print("min value:${findMin(root)} | max value:${findMax(root)}");
  print("3 soni bormi? : ${dfsSearch(root, 3)}");
}

/// ------------------------------------------------------------------------ ///
/// Breadth First Search -> kenglik boyicha tekshirish.
/// binary tree-ning node-larini qavatma-qavat yurib chiqamiz.
bool bfsSearch(TreeNode? root, int target) {
  if (root == null) return false;
  Queue<TreeNode> queue = Queue();
  queue.add(root);
  while (queue.isNotEmpty) {
    TreeNode current = queue.removeFirst();
    if (current.value == target) return true;
    if (current.left != null) queue.add(current.left!);
    if (current.right != null) queue.add(current.right!);
  }
  return false;
}

/// ------------------------------------------------------------------------ ///
/// binary tree max and min value example
int findMax(TreeNode? node) {
  if (node == null) return -2147483648;
  int maxLeft = findMax(node.left);
  int maxRight = findMax(node.right);
  return max(node.value, max(maxRight, maxLeft));
}

int findMin(TreeNode? node) {
  if (node == null) return 2147483648;
  return min(node.value, min(findMin(node.left), findMin(node.right)));
}

/// ------------------------------------------------------------------------ ///
/// Depth First Search example
/*
    1
   / \
  2   3
 / \   \
4   5   6
// shu binary tree ichida malum bir qiymat bor yoqligini tekshiramiz.
 */
bool dfsSearch(TreeNode? node, int target) {
  if (node == null) return false;
  if (node.value == target) return true;
  bool leftDfs = dfsSearch(node.left, target);
  bool rightDfs = dfsSearch(node.right, target);
  return leftDfs || rightDfs;
}

/// ------------------------------------------------------------------------ ///

/// Count Leaf Nodes
int countLeafNodes(TreeNode? node) {
  if (node == null) return 0;
  if (node.left == null && node.right == null) return 1;
  int leftLeaf = countLeafNodes(node.left);
  int rightLeaf = countLeafNodes(node.right);
  return leftLeaf + rightLeaf;
}

/// ------------------------------------------------------------------------ ///

/// Binary Tree dagi tugunlar sonini hisoblash
/// binary tree-dagi barcha node-lar sonini topish methhodi.
int countNode(TreeNode? node) {
  if (node == null) return 0;
  int leftCount = countNode(node.left);
  int rightCount = countNode(node.right);
  return 1 + leftCount + rightCount;
}

/// ------------------------------------------------------------------------ ///

/// Binary Tree balandligini (Height) topish yani  ildiz (root) tugundan pastga
/// qarab eng uzoq barggacha bo‘lgan yo‘l uzunligi.
int heightBinaryTree(TreeNode? node) {
  if (node == null) return 0;
  int heightLeft = heightBinaryTree(node.left);
  int heightRight = heightBinaryTree(node.right);
  return 1 + max(heightRight, heightLeft);
}

/// ------------------------------------------------------------------------ ///

/// Inorder Traversal yozish.
/// Inorder – bu daraxtdagi eng asosiy yurib chiqish usuli
void inorderTraversal(TreeNode? node) {
  if (node == null) return;
  inorderTraversal(node.left);
  print(node.value);
  inorderTraversal(node.right);
}
