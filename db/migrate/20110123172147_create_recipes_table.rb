class CreateRecipesTable < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.integer :category_id
      t.string :name
      t.text :desc
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
