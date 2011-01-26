class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :recipes, :through => :recipe_ingredients
  belongs_to :category
  include Shared
  
  def deleted!
    self.deleted_at = Time.now
    recipes.each do |ri|
      ri.deleted!
    end
    self.save
  end

end