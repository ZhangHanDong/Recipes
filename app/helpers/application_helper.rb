module ApplicationHelper
  %w(categories recipes ingredients).each do |name|
    define_method "get_#{name}" do |controller_name|
      controller_name == "#{name}" ? 'current' : ''
    end
  end
  
  def recipe_cate_collect
    RecipeCate.all.collect {|c| [ c.name, c.id ] }
  end
  
  def ingredient_cate_collect
    IngredientCate.all.collect {|c| [ c.name, c.id ] }
  end
  
  def ingredients_collect
    @met = Category.all.select {|c| c if c.class.to_s == 'IngredientCate'}.collect{|c| [c.name.to_s,  c.ingredients.select{|r| r if !r.deleted?}.collect{|c| [c.name.to_s, c.id]} ]}
    g = {}
    @met.each do |m|
      if g[m[0]].nil?
        g[m[0]] = m[1]
      else
        g[m[0]] += m[1]
      end
    end
    return g
  end
end
