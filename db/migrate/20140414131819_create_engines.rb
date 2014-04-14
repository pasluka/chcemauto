class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :title
      t.references :model, index: true
      t.integer :cylinders
      t.integer :volume
      t.integer :power
      t.integer :powerin
      t.integer :torque
      t.integer :torquein
      t.float :accel
      t.float :consucity
      t.float :consuextra
      t.float :counsucomb

      t.timestamps
    end
  end
end
