class CreateRecipeCookbooks < ActiveRecord::Migration
  def change
    create_table :recipe_cookbooks do |t|
      t.references :recipe
      t.references :cookbook

      t.timestamps
    end
  end
end
