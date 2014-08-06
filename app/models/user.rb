class User < ActiveRecord::Base
  has_many :cookbooks
  has_many :recipes, through: :cookbooks
  has_many :created_recipes, foreign_key: "creator_id", class_name: "Recipe"







end