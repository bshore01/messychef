$(document).ready(function(){
  
  // create_ingredient_hide();  

  // $("#add_ingredients").on("change", ".ingredient_name", function(){
  //   $("#notice-ingredient-added").remove();
  //   if ($(this).children("option").filter(":selected").text() == "New ingredient") {
  //     $("#create_ingredient").show();
  //   }
  //   if ($(this).children("option").filter(":selected").text() != "New ingredient") {
  //     $("#create_ingredient").hide();
  //   }
  // });

  // $("#add_ingredient_to_db").click(function(e) {
  //   e.preventDefault();
  //   var name = $("#create_ingredient").children("input").val();
  //   var url ="/ingredients";
  //   $.post(url, {data: {name: name}}, function(response){
  //     $("#add_ingredients").append('<p id="notice-ingredient-added">Succesfully added ingredient</p>')
  //     create_ingredient_hide();
  //     ingredientListValues();
  //   });
  // });
});

function create_ingredient_hide() {
  $("#create_ingredient").hide();
}