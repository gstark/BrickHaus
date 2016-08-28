class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :description
      t.references :home, foreign_key: true

      t.timestamps
    end
  end
end
