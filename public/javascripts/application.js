// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function remove_fields(ingredient_id){
  $('#ingredient_'+ingredient_id).remove();
  if (ingredient_id == undefined){
    $('#ingredient_').remove();
  }
}

jQuery(function($) {
  // when the #region_id field changes
  $("#recipe_ingredients").change(function() {
    var ingredient_id = $('select#recipe_ingredients :selected').val();
    var ingredient_desc = $('select#recipe_ingredients :selected').text();
    if(ingredient_id == undefined) ingredient_id="0";
    amount_html = "<dl><dt><label>Require Amount</label></dt><dd><input type='text size='50' required='required' name='recipe[recipe_ingredients_attributes]["+ingredient_id+"][amount]' maxlength='255' id='recipe_name' class='string required'>" + "</dd></dl>"
    unit_html = "<dl><dt><label>Unit</label></dt><dd><input type='text size='50' required='required' name='recipe[recipe_ingredients_attributes]["+ingredient_id+"][unit]' maxlength='255' id='recipe_name' class='string required'>" + "</dd></dl>"
    html = "<fieldset id=ingredient_" + ingredient_id + "><dl><dt><label>Ingredient Name</label></dt><dd><input type='text size='50' required='required' name='recipe[recipe_ingredients_attributes]["+ingredient_id+"][ingredient_name]' maxlength='255' id='recipe_name' class='string required' value = " +ingredient_desc +">" + "</dd></dl>"+ amount_html + unit_html + "<a onclick='remove_fields("  + ingredient_id +  ");return false;' href='#'>remove</a></fieldset>"
    $("#recipe_ingredients_dl").append(html);
    
    // jQuery.get('/ingredients/' + ingredient_id , function(data){
    //       $("#addressCities").html(data);
    //     })
    return false;
  });
})