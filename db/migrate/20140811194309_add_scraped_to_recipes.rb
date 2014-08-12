class AddScrapedToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :scraped, :boolean, :default => false
  end
end
