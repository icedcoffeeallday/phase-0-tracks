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

//Release 1: Find matching key/value pairs

//Pseudocode
//inputs: at least two objects with key/value pairs
//steps:
  // - compare object keys
  // - if keys match, compare key values
  // - if match between both key and value, return true
  // - else return false
//output: boolean value that indicates whether objects have matching key/value pairs

    var Steven = {name: "Steven", age: 54, location: "San Francisco", occupation: "lawyer"}
    var Tamir = {name: "Tamir", age: 32, location: "San Francisco", occupation: "dentist"}
    var Mittens = {animal: "Cat", legs: 4}
    var Bandit = {animal: "Dog", legs: 4}


    function KeyMatch(obj1,obj2) {
        var Obj1Keys = Object.keys(obj1);
        var Obj2Keys = Object.keys(obj2);
         // console.log(Obj1Keys);
         // console.log(Obj2Keys);
        // }
        for (i = 0; i < obj1.length; i++) {
          if (obj1[i] == obj2[i]) {
              true
            }
          else false
        }
        }
    //I got really stuck on this one. I have found a lot of really complicated ways to compare
    //objects with JS, but they're beyond what I understand. I've wrangled this one for an hour or so,
    //and will come back to it if I can.



//Release 2: Generate random test data





//------------------Driver Code-----------------------//

//Release 0: Find Longest Phrase
FindLongestPhrase(phrase_list)

//Release 1: Compare key/value pairs
console.log(KeyMatch(Steven,Tamir))