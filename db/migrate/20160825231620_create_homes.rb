class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.integer :beds
      t.integer :baths
      t.integer :square_footage
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
