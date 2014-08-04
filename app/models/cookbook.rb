class Cookbook < ActiveRecord::Base
  belongs_to :user
  has_many :recipe_cookbooks
  has_many :recipes, through: :recipe_cookbooks
end
