    class Solution {
  List<int> productExceptSelf(List<int> nums) {
      var list = List.filled(nums.length,0);
      int prod = 1;
//use two loops to calculate the product from both sides of the list
      for(int i =0; i<nums.length;i++){
        list[i] = prod;
        prod*=nums.elementAt(i);
        }
        prod = 1;
        for(int i=nums.length-1; i>=0; i--){
          list[i] = prod*list[i];
//The product is stored in a new list and returned.
          prod*=nums[i];
        }
      return list;
  }
}
