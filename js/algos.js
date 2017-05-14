//Release 0: Find the longest phrase

//Pseudocode
//inputs: list of phrases (strings)
//steps: 
// - loop through list
// - compare the length of each phrase to the other phrases
// - return the longest word or phrase from the list
//output: the longest phrase from the list of phrases

var phrase_list = ["long phrase","longest phrase","longer phrase"];
var longest_phrase = "";

function FindLongestPhrase(phrase_list) {
    for ( i = 0; i < phrase_list.length; i++) {  
      if (phrase_list[i].length > longest_phrase.length) {
        longest_phrase = phrase_list[i];
        }
      }
    console.log(longest_phrase)
    }







//------------------Driver Code-----------------------//

//Release 0: Find Longest Phrase
FindLongestPhrase(phrase_list)