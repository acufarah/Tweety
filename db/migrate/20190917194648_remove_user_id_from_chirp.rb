class RemoveUserIdFromChirp < ActiveRecord::Migration[5.2]
  def change
    remove_column :chirps, :user_id, :integer
  end
end
