//Release 0: Find the longest phrase

//Pseudocode
//inputs: list of phrases (strings)
//steps: 
// - loop through list
// - return length of each index
// - find the index value with the greatest length
// - return the value from that index
//output: the longest phrase from the list of phrases

var phrase_list = ["long phrase","longest phrase","longer phrase"];
var length_array = [];
var length_location = "";

for ( i = 0; i < phrase_list.length; i++) {  
  console.log(phrase_list[i]);
  console.log(phrase_list[i].length);
  length_array.push(phrase_list[i].length);
  console.log(length_array);
  length_location = indexOf()//paused here, this isn't complete
}