class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int ans = nums[0];

    for (int num in nums) {
      if (count == 0) {
        ans = num;
      }
      if (num == ans) {
        count++;
      } else {
        count--;
      }
    }

    return ans;
  }
}