class AddChirpIdsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :chirp_id, :integer
  end
end
