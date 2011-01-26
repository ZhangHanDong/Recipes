class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients

  has_many :ingredients, :through => :recipe_ingredients
  belongs_to :category
  include Shared
  
  def recipe_ingredients_attributes=(recipe_ingredients_attributes)
    recipe_ingredients_attributes.keys.each do |ingredient_id|
      recipe_ingredient = recipe_ingredients.build
      ri = recipe_ingredients_attributes[ingredient_id]
      recipe_ingredient.ingredient_id = ingredient_id
      recipe_ingredient.amount = ri[:amount]
      recipe_ingredient.unit = ri[:unit]
    end
  end

end