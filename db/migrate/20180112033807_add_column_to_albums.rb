class AddColumnToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :img, :string
  end
end
