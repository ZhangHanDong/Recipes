class RecipesController < BaseController

  def create
    recipe_ingredients_attributes = params[:recipe].delete(:recipe_ingredients_attributes)
    @recipe = Recipe.create(params[:recipe])
    recipe_ingredients_attributes.keys.each do |ingredient_id|
      RecipeIngredient.create(:ingredient_id => ingredient_id, :recipe_id => @recipe.id ,:amount => recipe_ingredients_attributes[ingredient_id][:amount], :unit => recipe_ingredients_attributes[ingredient_id][:unit])
    end
    flash[:notice] = "Create Recipe Successful!"
    redirect_to recipes_path
  end
  
  protected
  def collection
    @recipes = end_of_association_chain.order("created_at desc").paginate(:per_page => 10, :page => params[:page])
  end
end