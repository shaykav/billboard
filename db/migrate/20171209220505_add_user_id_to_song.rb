class AddUserIdToSong < ActiveRecord::Migration[5.1]
  def change
    add_reference :songs, :user, foreign_key: true
  end
end
