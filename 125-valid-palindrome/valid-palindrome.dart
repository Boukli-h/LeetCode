class Solution {
  bool isPalindrome(String s) {
  // Convert to lowercase and remove non-alphanumeric characters
  String cleanedString = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  // Check if the cleaned string is a palindrome
  return cleanedString == cleanedString.split('').reversed.join('');
}
}