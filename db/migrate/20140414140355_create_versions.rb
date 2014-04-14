class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :title
      t.integer :price
      t.references :brand
      t.references :model, index: true
      t.references :engine, index: true

      t.timestamps
    end
  end
end
