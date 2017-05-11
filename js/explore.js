// Pseudo code for reversing a word
// Accept string input
// For each letter of the string, move letters 
//  to their opposite position in the word: first letter becomes last, second letter 
//  becomes second-from-last, and so on.
//Return reversed word as a string.

var word = "";
var NewWord = "";

function ReverseString(word) {

for (var i = word.length - 1; i >= 0; i--) {
  NewWord = NewWord + word[i]; 
}
return NewWord;
}
console.log(ReverseString("hello"))

