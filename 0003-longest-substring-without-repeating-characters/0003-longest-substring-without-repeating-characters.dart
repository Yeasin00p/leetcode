class Solution {
  int lengthOfLongestSubstring(String s) {
    final Map<String, int> lastSeen = {};
    int maxLen = 0;
    int left = 0;

    for (int right = 0; right < s.length; right++) {
      final String ch = s[right];

      if (lastSeen.containsKey(ch) && lastSeen[ch]! >= left) {
        left = lastSeen[ch]! + 1;
      }

      lastSeen[ch] = right;

      final int windowSize = right - left + 1;
      if (windowSize > maxLen) maxLen = windowSize;
    }

    return maxLen;
  }
}