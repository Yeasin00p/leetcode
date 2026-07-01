class Solution {
  void moveZeroes(List<int> nums) {
    int s = 0;
    for(int i = 0; i<nums.length;i++){
        if(nums[i]!=0){
            final int t = nums[s];
            nums[s]=nums[i];
            nums[i]=t;
            s++;
        }
    }
  }
}