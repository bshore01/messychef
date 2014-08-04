class CreateRecipeIngredientUnits < ActiveRecord::Migration
  def change
    create_table :recipe_ingredient_units do |t|
      t.references :recipe
      t.references :ingredient
      t.references :unit
      t.integer :amount

      t.timestamps
    end
  end
end
