import 'dart:math';

class Solution {
  bool canJump(List<int> nums) {
    int current = 0, maxJumping = 0, index = 0;
    while (index < nums.length) {
      maxJumping = max(maxJumping, index + nums[index]);
      if (current >= nums.length - 1) return true;
      if (current < index) return false;
      if (index == current) current = maxJumping;
      index++;
    }
    return true;
  }
}

class Solution1 {
  int maxSubArray(List<int> nums) {
    int maxSubarray = nums[0], currently = 0;
    for (int n in nums) {
      if (currently < 0) {
        currently = 0;
      }
      currently += n;
      maxSubarray = max(maxSubarray, currently);
    }
    return maxSubarray;
  }
}

// leetcode 122
class Solution2 {
    int maxProfit(List<int> prices) {
        int profit=0;
        int minimalPrices = prices[0];
        for(int i=1; i<prices.length; i++) {
            minimalPrices =  minNumber(minimalPrices,prices[i]);
            profit = maxNumber(profit,-minimalPrices+prices[i]);
        }
        return profit;
    }

    int minNumber(int a,int b) {
        if (a>b) return b;
        else if(a==b) return a;
        else return a;
    }
    int maxNumber(int a,int b) {
        if(a>b) return a;
        else if(a==b) return a;
        else return b;
    }
}