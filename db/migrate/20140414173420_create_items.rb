class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :price
      t.references :version, index: true

      t.timestamps
    end
  end
end
