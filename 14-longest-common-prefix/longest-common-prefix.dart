class Solution {
  String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return "";
//return empty string as there is no common prefix to find.
  String pre = strs[0];//initial common prefix.
//Iterate through the remaining strings in strs list starting from the second string.
  for (int i = 1; i < strs.length; i++) {
//check if current string (strs[i]) starts with the pre 
//indexOf check if pre is at the beginning of strs[i]      
    while (strs[i].indexOf(pre) != 0) {
//If pre is not found, remove last character from pre by using substring method and update pre to the new substring.        
        pre = pre.substring(0, pre.length - 1);
//If pre becomes empty after removing the last character=> there is no common prefix among the strings.        
        if (pre.isEmpty) return "";
    }
  }
  return pre;//Return pre as the longest common prefix among the strings.
}
}