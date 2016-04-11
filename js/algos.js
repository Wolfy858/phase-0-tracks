// Step 1: Assign argument array of word to a variable.
// Step 2: Initialize a 'longest word' variable to be the first word in the array
// Step 3: Start a for loop that will traverse the array of words.
// Step 3: For each word, compare the length of it to longest word. Reassign longest word if
//the current word's length is greater than or equal to longest word.
//Step 4: Return the value held by the 'longest word' variable.

function longestPhrase(array) {
  var arr = array;
  var longestPhrase = arr[0];
  for (i = 0; i < arr.length; i++) {
    var currentPhrase = arr[i]
    if (currentPhrase.length > longestPhrase.length) {
      longestPhrase = currentPhrase
    };
  };
  return longestPhrase
}

array = ["short", "longer", "longest", "return_value", "shorty", "meh", "return"];
console.log(longestPhrase(array));
array2 = ["1", "333", "22", "55555", "4444", "1", "333", "22"];
console.log(longestPhrase(array2))
