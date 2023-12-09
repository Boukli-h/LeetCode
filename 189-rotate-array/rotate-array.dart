class Solution {
  void rotate(List<int> nums, int k) {
    k = k % nums.length;
    //This line creates a new list (result) by concatenating two sublists of the original array (nums). The first sublist starts from the index nums.length - k to the end of the array, and the second sublist starts from the beginning of the array to the index nums.length - k. This effectively rotates the array elements to the right.
    var result = nums.sublist(nums.length - k) + nums.sublist(0, nums.length - k);
    nums
      ..clear()
      ..addAll(result);
}
}