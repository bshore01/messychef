class RecipeCookbooksController < ApplicationController

  def add_recipe_to_cookbook
    user = User.find(params[:user_id])
    recipe = Recipe.find(params[:recipe_id])
    user.cookbooks.first.recipes << recipe
    user.save
  end 
end