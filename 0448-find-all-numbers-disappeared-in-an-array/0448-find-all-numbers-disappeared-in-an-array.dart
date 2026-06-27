class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    final int n = nums.length;
    for(int i =0 ; i<n ;i++){
        final int index = nums[i].abs()-1;
        if(nums[index]>0){
            nums[index]=-nums[index];
        }
        
    }
    final List<int> missing =[];
    for(int i =0; i<n;i++){
        if(nums[i]>0){
            missing.add(i+1);
        }
    }
    return missing;
  }
}