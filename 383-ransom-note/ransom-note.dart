class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> charCount = {};

  // Count the frequency of characters in the magazine
  for (int i = 0; i < magazine.length; i++) {
    String char = magazine[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }
  for (int i = 0; i < ransomNote.length; i++) {
    String char = ransomNote[i];
    // If the character is not present in the magazine or its frequency is zero,
    // it cannot be constructed
    if (charCount[char] == null || charCount[char] == 0) {
      return false;
    }
    // Decrement the frequency of the character in the magazine
    charCount[char] = charCount[char]! - 1;
  }

  // If we reach here, all characters in the ransomNote can be constructed
  return true;

  }
}