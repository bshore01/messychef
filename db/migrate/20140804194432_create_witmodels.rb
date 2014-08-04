class CreateWitmodels < ActiveRecord::Migration
  def change
    create_table :witmodels do |t|

      t.timestamps
    end
  end
end
