# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
RecipeCate.create(:name => "Soups", :desc => "There are various Soups Recipes")
RecipeCate.create(:name => "Fired", :desc => "There are various Fired Recipes")
RecipeCate.create(:name => "Noodles", :desc => "There are various Noodles Recipes")

IngredientCate.create(:name => "Fruit", :desc => "Friuts list")
IngredientCate.create(:name => "Meat", :desc => "Meat list")
IngredientCate.create(:name => "Vegetables", :desc => "Vegetables list")
