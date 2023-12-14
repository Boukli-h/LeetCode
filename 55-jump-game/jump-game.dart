class Solution {
  bool canJump(List<int> nums) {
    int i = 0;
  int reach = 0;

  while (i < nums.length && i <= reach) {
    reach = reach > i + nums[i] ? reach : i + nums[i];
    i++;
  }

  return i == nums.length;
  }
}