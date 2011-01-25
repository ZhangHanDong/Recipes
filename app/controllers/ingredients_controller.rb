class IngredientsController < BaseController

  def delete
    
  end
  
  protected
  def collection
    @ingredients = end_of_association_chain.order("created_at desc").paginate(:per_page => 10, :page => params[:page])
  end
end