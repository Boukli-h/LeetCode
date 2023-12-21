  class Solution {
  int canCompleteCircuit(List<int> gas, List<int> cost) {
      //declaring variables
      int start=0; 
      int total=0; 
      int tank=0;
    //iterates over the elements of the gas and checks if i is less than the length of the gas list.  
      for(int i=0;i<gas.length;i++) 
    //calculates the value of tank by adding the i-th el of the gas list and subtracting the i-th el of the cost list and assigns the new value of tank to itself. If the value of tank is less than 0, the code inside the if statement is executed.
        if((tank=tank+gas[i]-cost[i])<0) {   
// updates the start variable to the index of the next element in the gas and cost lists.               
            start=i+1;
    // adds the value of tank to the total variable.        
            total+=tank;
    // resets the value of tank to 0.
            tank=0;
            }
    // return -1 If the sum is less than 0,Otherwise, return the value of start       
        return (total+tank<0)? -1:start;
  }
}
 