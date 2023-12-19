import 'dart:math';

class RandomizedSet {
  late List<int> array; // List to store the elements of the set

  RandomizedSet() {
    array = []; // Initialize the set as an empty list
  }

  bool insert(int val) {
    if (array.contains(val)) return false; // If the value already exists in the set, return false
    array.insert(array.length, val); // Add the value to the end of the list
    return true;
  }

  bool remove(int val) {
    return array.remove(val); // Remove the specified value from the list if it exists
  }

  int getRandom() {
    int index = Random().nextInt(array.length); // Generate a random index within the range of the list
    return array[index]; // Return the element at the random index
  }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * RandomizedSet obj = RandomizedSet();
 * bool param1 = obj.insert(val);
 * bool param2 = obj.remove(val);
 * int param3 = obj.getRandom();
 */