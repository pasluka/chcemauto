class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :title
      t.string :bodystyle
      t.references :brand, index: true

      t.timestamps
    end
  end
end
