class Solution {
  int maxArea(List<int> height) {
  
  int maxWater = 0;
  int left = 0;
  int right = height.length - 1;

  while (left < right) {
    int hLeft = height[left];
    int hRight = height[right];

    // Calculate the area formed by the lines at the current positions
    int currentArea = (right - left) * (hLeft < hRight ? hLeft : hRight);

    // Update the maximum water stored
    maxWater = maxWater > currentArea ? maxWater : currentArea;

    // Move the pointers based on the height of the lines
    if (hLeft < hRight) {
      left++;
    } else {
      right--;
    }
  }

  return maxWater;
  }
}