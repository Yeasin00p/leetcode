class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> freq = List.filled(101, 0);

    for(int num in nums) {
        freq[num]++;
    }


    for(int i = 1; i < 101; i++) {
        freq[i] += freq[i - 1];
    }

    List<int> result = [];

    for(int num in nums) {
        if(num == 0) {
            result.add(0);
        } else {
            result.add(freq[num - 1]);
        }
    }

    return result;
  }
}