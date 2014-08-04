class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredient_units
  has_many :recipes, through: :recipe_ingredient_units
  has_many :units, through: :recipe_ingredient_units
end
