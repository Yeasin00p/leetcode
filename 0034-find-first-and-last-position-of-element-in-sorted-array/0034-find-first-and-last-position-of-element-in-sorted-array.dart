class Solution {
  List<int> searchRange(List<int> nums, int target) {
    int left = binSearch(nums,target,true);
    int right = binSearch(nums,target,false);
    return [left,right];
  }
  int binSearch(List<int>nums,int target, bool findFirst){
    int left = 0;
    int right = nums.length-1;
    int ans =-1;
    while(left <= right){
        int mid = left +(right-left)~/2;
        if(nums[mid]==target){
            ans=mid;
            if(findFirst){
                right=mid-1;
            }else{
                left=mid+1;
            }
        }else if(nums[mid]<target){
            left=mid+1;
        }else{
            right = mid -1;
        }
    }
    return ans;
  }
}