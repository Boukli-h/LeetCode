class Solution {
 int lengthOfLastWord(String s) {
   int count = 0;
   s = s.trim();//remove leading and trailing spaces from a string
   for(int i = s.length - 1; i >= 0; i--){
     if(s[i] == ' '){
       break;
     }
     count++;
   }
   return count;
 }
}
