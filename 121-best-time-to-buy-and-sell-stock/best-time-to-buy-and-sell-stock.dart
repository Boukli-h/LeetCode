class Solution {
  int maxProfit(List<int> prices) {
    int min=prices[0];
    int profit = 0;
    for (var i = 0; i < prices.length - 1; i++) {
      if (prices[i] < min) {
        min = prices[i];
      } 
      int tempProfit = prices[i+1]- min;
      if (tempProfit > profit) { 
      profit = tempProfit;
      }
    }    
  return profit;
  }}