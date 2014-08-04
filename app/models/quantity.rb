class Quantity < ActiveRecord::Base
  has_many :recipe_ingredient_quantities
  has_many :recipes, through: :recipe_ingredient_quantities
  has_many :ingredients, through: :recipe_ingredient_quantities
end
