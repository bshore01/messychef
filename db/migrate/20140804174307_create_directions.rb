class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.references :recipe
      t.integer :sequence
      t.text :description

      t.timestamps
    end
  end
end
