class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  
  include Shared

  def ingredient_name
    Ingredient.find( self.ingredient_id ).try(:name)
  end
  
  def ingredient_typee
    Ingredient.find( self.ingredient_id ).category.try(:name)
  end
  
end