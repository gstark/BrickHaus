class AddImagesToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :main_image_id, :string
    add_column :homes, :additional_image_id, :string
  end
end
