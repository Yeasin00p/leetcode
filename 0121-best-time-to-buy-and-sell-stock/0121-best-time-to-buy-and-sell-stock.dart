class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxPrice = 0;
    for(final price in prices){
        if(price < minPrice){
            minPrice=price;
        }else if(price - minPrice > maxPrice){
            maxPrice = price - minPrice;
        }
    }
    return maxPrice;
  }
}