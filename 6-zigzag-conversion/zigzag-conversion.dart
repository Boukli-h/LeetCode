class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1 || numRows >= s.length) {
    return s;
  }

  List<String> rows = List.filled(numRows, "");
  int currentRow = 0;
  bool goingDown = false;

  for (int i = 0; i < s.length; i++) {
    rows[currentRow] += s[i];

    if (currentRow == 0 || currentRow == numRows - 1) {
//If we reach the first or last row, change the direction
// (goingDown).Update the currentRow based on the direction.        
      goingDown = !goingDown;
    }

    currentRow += goingDown ? 1 : -1;
  }

  String result = "";
  rows.forEach((row) {
    result += row;//Concatenate all rows to form the final result string.
  });

  return result;
}
}