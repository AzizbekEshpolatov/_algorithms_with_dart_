class MyHashSet {
  final List<int> seen = [];

  void add(int key){
    if (!seen.contains(key)) {
      seen.add(key);
    }
  }

  void remove(int key) {
    seen.remove(key);
  }

  bool contains(int key) => seen.contains(key);
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */