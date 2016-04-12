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

//Find a Key-Value match
//Step 1: Iterate through each property in one of the objects
// Step 2: Check to see if the property exists in the other object
//Step 3: Check to see if both properties hold the same value. if this and
// the step 2 condition are true, return true
//Step 4: At the termination of the loop, return false if no matches were found

function shareKeyValuePairs(obj1, obj2) {
  for (var i in obj1) {
    if ( obj2.hasOwnProperty(i) && obj1[i] == obj2[i]) {
      return true;
    }
  };
  return false;
}

//Generate random test data
//Need a function that determines a random number between two numbers
function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}
//Step 1: Declare an empty array that will be populated
//Step 2: Iterate through a loop 'int' times, where int will be
// the number of items in the array.
//Step 3: Randomly determine the length of the word to be added, and then
//that many times push it into an empty 'currentWord' variable.
//Step 4: Add the current word into our array of words.
//Step 5: At the conclusion of the loops, return the resulting array.
function generateRandomTestData(int) {
  words = []
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  for (i = 0; i < int; i++) {
    currentWord = "";
    length = getRandomInt(1, 10);
    for (j = 0; j < length; j++) {
      currentLetter = alphabet[getRandomInt(0, 25)]
      currentWord = currentWord += currentLetter
    };
    words.push(currentWord)
  };
  return words;
}

// Driver code for longestPhrase
array = ["short", "longer", "longest", "return_value", "shorty", "meh", "return"];
console.log(longestPhrase(array));
array2 = ["1", "333", "22", "55555", "4444", "1", "333", "22"];
console.log(longestPhrase(array2))

//Driver code fore shareKeyValuePairs
a = new Object();
b = new Object();
c = new Object();
d = new Object();
a.foo = "bar";
b.foo = "bar";
c.foo = "baz";
d.prop = true;
console.log(shareKeyValuePairs(a, b));
console.log(shareKeyValuePairs(a, c));
console.log(shareKeyValuePairs(a, d));

//Driver code for generateRandomTestData
for (e = 0; e < 10; e++) {
  arr = generateRandomTestData(5);
  console.log(arr);
  console.log(longestPhrase(arr));
}
