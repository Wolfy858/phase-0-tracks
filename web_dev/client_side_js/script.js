console.log("our script works");

function deleteTaco(event) {
  console.log("Deleting Taco. This is the event:");
  console.log(event);
  var taco = document.getElementsByTagName("img")
  taco[0].hidden = true;
}

var background = document.getElementsByTagName("body")
var new_background = background[0]
new_background.style.backgroundColor = "green";

var button = document.getElementsByTagName("button")[0];
button.addEventListener("click", deleteTaco);
