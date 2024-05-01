class Solution {
  bool wordPattern(String pattern, String s) {
      List<String> patternChars = pattern.split('');
  List<String> words = s.split(' ');

  if (patternChars.length != words.length) return false;

  Map<String, String> patternToWord = {};
  Map<String, String> wordToPattern = {};

  for (int i = 0; i < patternChars.length; i++) {
    String patternChar = patternChars[i];
    String word = words[i];

    if (patternToWord.containsKey(patternChar)) {
      if (patternToWord[patternChar] != word) return false;
    } else {
      patternToWord[patternChar] = word;
    }

    if (wordToPattern.containsKey(word)) {
      if (wordToPattern[word] != patternChar) return false;
    } else {
      wordToPattern[word] = patternChar;
    }
  }

  return true;

  }
}