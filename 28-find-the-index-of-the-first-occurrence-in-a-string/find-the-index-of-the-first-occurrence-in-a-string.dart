class Solution {
  int strStr(String haystack, String needle) {
  for (int i = 0; i <= haystack.length - needle.length; i++) {
//Check if the substring of haystack starting from the current index and 
//having the length of needle matches the needle.      
    if (haystack.substring(i, i + needle.length) == needle) {
      return i;
    }
  }
  return -1;
  }
}