$(document).ready(function(){
  $('img').click(function(){
    $(this).fadeOut('slow');
  });
  $('ul').click(function(){
    alert("You like that too? No wai!");
  });
  $('button').click(function(){
    $('h1').slideToggle('slow');
  })
});
