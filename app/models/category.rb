class Category < ActiveRecord::Base
  has_many :recipes
  has_many :ingredients
end

