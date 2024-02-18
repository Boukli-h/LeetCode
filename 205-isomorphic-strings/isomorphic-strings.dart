class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;

  Map<String, String> map = {};
  Set<String> mappedChars = {};

  for (int i = 0; i < s.length; i++) {
    String charS = s[i];
    String charT = t[i];

    if (map.containsKey(charS)) {
      // If the character from s has already been mapped, check if it's mapped to the correct character in t
      if (map[charS] != charT) {
        return false; 
      }
    } else {
      // If the character from s is not yet mapped, but the corresponding character in t has been mapped, it means there is a conflict
      if (mappedChars.contains(charT)) {
        return false; 
      }
      // Map the character from s to the corresponding character in t
      map[charS] = charT;
      // Add the mapped character from t to the set of mapped characters
      mappedChars.add(charT);
    }
  }
  return true; 
  }
}