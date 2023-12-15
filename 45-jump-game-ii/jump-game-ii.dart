class Solution {
  int jump(List<int> nums) {
    int max = 0;
    int last = 0;
    int result=0;
  for (int i = 0; i < nums.length - 1; i++) {
    max = max > i + nums[i] ? max : i + nums[i]; //Update max
    if (last == i) {//check the max distance reached
      result++;//Increment result to record the jump
      last = max;//Update last to the new max index
    }
  }
  return result;//Return the min number of jumps
 }
 }