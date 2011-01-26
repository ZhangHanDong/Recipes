class RecipesController < BaseController
  
  def index
    @recipes = Recipe.normal_datas.paginate(:per_page => 10, :page => params[:page])
  end
  
  def show
    @recipe = Recipe.find params[:id]
    @recipe_ingredients = @recipe.recipe_ingredients.select{|r| r if !r.deleted?}
  end

end