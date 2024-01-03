class Solution {
    String reverseWords(String s) {
        final list = s.split(' ');
//retainWhere removes any elts with length less than 1
        list.retainWhere((e) => e.length >= 1);
        return List.from(list.reversed).join(' ');
    }
}