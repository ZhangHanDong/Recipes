class IngredientsController < BaseController

  def index
    @ingredients = Ingredient.normal_datas.paginate(:per_page => 10, :page => params[:page])
  end

  def show
    show! do |format|
      format.html { redirect_to ingredients_path }
    end
  end

  def delete
    @ingredient = Ingredient.find params[:id]
    @ingredient.deleted!
    flash[:notice] = "deleted successful!"
    redirect_to ingredients_path
  end

end