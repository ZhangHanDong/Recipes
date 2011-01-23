class CreateRecipeIngredientsTable < ActiveRecord::Migration
  def self.up
    create_table :recipe_ingredients do |t|
      t.integer  :recipe_id
      t.integer  :ingredient_id
      t.string   :name
      t.text     :desc
      t.string   :unit
      t.decimal  :amount, :precision => 10, :scale => 2
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_ingredients
  end
end
