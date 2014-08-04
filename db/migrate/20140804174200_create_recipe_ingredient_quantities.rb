class CreateRecipeIngredientQuantities < ActiveRecord::Migration
  def change
    create_table :recipe_ingredient_quantities do |t|
      t.references :recipe
      t.references :ingredient
      t.references :quantity

      t.timestamps
    end
  end
end
