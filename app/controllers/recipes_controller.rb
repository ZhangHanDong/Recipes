class RecipesController < BaseController

  
  protected
  def collection
    @recipes = end_of_association_chain.order("created_at desc").paginate(:per_page => 10, :page => params[:page])
  end
end