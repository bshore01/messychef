class Unit < ActiveRecord::Base
  has_many :recipe_ingredient_units
  has_many :recipes, through: :recipe_ingredient_units
  has_many :ingredients, through: :recipe_ingredient_units
end
