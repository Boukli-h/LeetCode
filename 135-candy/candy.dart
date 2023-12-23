class Solution {
  int candy(List<int> ratings) {
//creates new list candies, same length as ratings list and initializes all elements to 1      
    List<int> candies = List<int>.filled(ratings.length, 1);
//loop compares the current rating with the previous rating
  for (int i = 1; i < ratings.length; ++i) {
//check the current rating if greater than the previous rating      
    if (ratings[i] > ratings[i - 1]) {
//increments the num of candies for the current child by 1 compared to the previous child.        
      candies[i] = candies[i - 1] + 1;
    }
  }
//loop starts from the second-to-last index (n - 2) and goes down to 0
  for (int i = ratings.length - 2; i >= 0; --i) {
    if (ratings[i] > ratings[i + 1]) {        
      candies[i] = max(candies[i], candies[i + 1] + 1);
    }
  }
//sum up all the elts in the candies list using the reduce method.
  int totalCandies = candies.reduce((a, b) => a + b);
  return totalCandies; //returns the min num of candies required
  }
}