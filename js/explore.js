// Pseudo code for reversing a word
// Accept string input
// For each letter of the string, move letters 
//  to their opposite position in the word: first letter becomes last, second letter 
//  becomes second-from-last, and so on.
//Return reversed word as a string.

var word = "";

function ReverseString(word) {
for (var i = 0; i < word.length; i++) {
  word = word + word[i]; 
  console.log(NewWord);
}
}
ReverseString("word")