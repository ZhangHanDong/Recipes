class CreateIngredientsTable < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.integer :category_id
      t.string :name
      t.text :desc
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end
