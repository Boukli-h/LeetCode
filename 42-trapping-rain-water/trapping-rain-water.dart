class Solution {
  int trap(List<int> height) {
      int result = 0;
      int l = 0;//l & r represent the left and the right pointers 
      int r = height.length - 1;
//l_max and r_max store the maximum height of the bars encountered so far from the left and right pointers, respectively.      
      int l_max = 0;
      int r_max = 0;
//algorithm iterate from both ends of the list towards the center, keeping track of the maximum bar heights encountered. It calculates the trapped water by comparing the maximum heights and subtracting the current bar height.      
      while (l < r) {
        l_max = max(height[l], l_max);
        r_max = max(height[r], r_max);
        if (l_max < r_max) {
            result += l_max - height[l];
            l++;
        }
        else {
            result += r_max - height[r];
            r--;
        }
      }
      return result;
  }
}