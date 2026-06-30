class Solution {
  int numberOfSubstrings(String s) {
    int left =0;
    int answer = 0;
    Map<String,int > count = {
        'a': 0,
        'b' : 0,
        'c': 0,
    };
    for(int right =0; right < s.length ; right++){
        count[s[right]] = count[s[right]]!+1;
        while(count['a']!> 0 && count['b']!>0 && count['c']!>0){
            answer += s.length - right;
            count[s[left]]=count[s[left]]!-1;
            left++;
        }
    }
    return answer;
  }
}