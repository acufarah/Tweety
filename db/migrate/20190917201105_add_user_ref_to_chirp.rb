class AddUserRefToChirp < ActiveRecord::Migration[5.2]
  def change
    add_reference :chirps, :user, foreign_key: true
  end
end
