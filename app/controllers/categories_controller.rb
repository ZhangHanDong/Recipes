class CategoriesController < BaseController
  
  def new
    case params[:typee]
    when 'recipe'
      @category = RecipeCate.new
      @cate_name = "Recipe"
      @cate_class = :recipe_cate
    when 'ingredient'
      @category = IngredientCate.new
      @cate_name = "Ingredient"
      @cate_class = :ingredient_cate
    end
  end
  
  def create
    if !params[:recipe_cate].blank?
      @category = RecipeCate.create params[:recipe_cate]
    elsif !params[:ingredient_cate].blank?
      @category = IngredientCate.create params[:ingredient_cate]
    end
    redirect_to categories_path
  end
  
  protected
  def collection
    @categories = end_of_association_chain.order("created_at desc").paginate(:per_page => 10, :page => params[:page])
  end
end