class Solution {
  int mySqrt(int x) {

    if(x < 2) return x ;

    int low = 1;
    int high = x;
    int ans = 1;

    while (low<=high){
        int mid = low + ((high - low)~/2);
        final square = mid * mid;

        if (square == x){
            return mid;
        }
        else if(square < x){
         ans = mid ;
         low =mid +1;
        }else{
            high = mid -1;
        }
    }
    return ans;
  }
}