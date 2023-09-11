class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :Title
      t.string :District
      t.decimal :size
      t.decimal :rent
      t.integer :type
      t.integer :city

      t.timestamps
    end
  end
end
