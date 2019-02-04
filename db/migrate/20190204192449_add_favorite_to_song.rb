class AddFavoriteToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :favorite, :boolean, default: false
  end
end
