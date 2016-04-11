// Step one: assign an empty string variable that will hold the reversed letters
// Step two: For each letter in the initial string, starting with the last letter,
// add the character to the reversed string
// Step three: return the completed reversed string

function reverseString(str) {
  var reversed = "";
  for (var i = str.length - 1; i >= 0; i-= 1) {
    reversed = reversed.concat(str[i])
  };
  return reversed
}

reversedString = reverseString("Hello World!");
if (1 == 1) {
  console.log(reversedString)
}
