class Solution {
  int maxProfit(List<int> prices) {
    final len = prices.length;
    int buy = prices[0];
    int profit = 0;

    for (int i = 1; i < len; ++i) {
        final p = prices[i];
// Update the buying price to the minimum of current price and previous buying price
       buy = p < buy ? p : buy;
 // Check if it's the last day or the price will decrease on the next day
       if (i == len-1 || p > prices[i+1]) {
            profit += p - buy;
 // If it's not the last day, update the buying price to the next day's price
        if (i < len-1) buy = prices[i+1];
        }
    }
// Return the total profit achieved
    return profit;
  }
}