class Solution {
  String intToRoman(int num) {
    final List<String> M = ["", "M", "MM", "MMM"];
    final List<String> C = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
    final List<String> X = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
    final List<String> I = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];
    return M[num ~/ 1000] + C[num % 1000 ~/ 100] + X[num % 100 ~/ 10] + I[num % 10];
  }
}
