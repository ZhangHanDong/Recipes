class CreateCategoriesTable < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :type
      #public attributes
      t.string :name
      t.text :desc
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
