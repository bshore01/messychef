$(document).ready(function(){
  
  $("#create_ingredient").hide();

  $("#add_ingredients").on("change", ".ingredient_name", function(){
    if ($(this).children("option").filter(":selected").text() == "New ingredient") {
      $("#create_ingredient").show();
    }
    if ($(this).children("option").filter(":selected").text() != "New ingredient") {
      $("#create_ingredient").hide();
    }
  });

  $("#add_ingredient_to_db").click(function(e) {
    e.preventDefault();
    var name = $("#create_ingredient").children("input").val();
    var url ="/ingredients";
    $.post(url, {data: {name: name}}, function(newly_created_ingredient){
      // console.log(newly_created_ingredient);
    });
  });
});


