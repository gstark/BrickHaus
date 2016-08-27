class AddAssociationsToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :agent_id, :integer
    add_column :homes, :owner_id, :integer
  end
end
