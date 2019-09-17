class RemoveChirpIdFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :chirp_id, :integer
  end
end
