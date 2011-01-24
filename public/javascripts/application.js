// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function($) {
  // when the #region_id field changes
  $("#recipe_ingredients").change(function() {
    var ingredient_id = $('select#recipe_ingredients :selected').val();
    if(ingredient_id == undefined) ingredient_id="0";
    jQuery.get('/ingredients/' + ingredient_id , function(data){
      $("#addressCities").html(data);
    })
    return false;
  });
})