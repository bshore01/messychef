class Recipe < ActiveRecord::Base
  has_many :recipe_cookbooks
  has_many :cookbooks, through: :recipe_cookbooks
  belongs_to :creator, class_name: "User"
  has_many :directions
  has_many :recipe_ingredient_units
  has_many :ingredients, through: :recipe_ingredient_units
end
