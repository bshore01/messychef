class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredient_quantities
  has_many :recipes, through: :recipe_ingredient_quantities
  has_many :quantities, through: :recipe_ingredient_quantities
end
