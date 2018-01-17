class AddForeignKeyToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :album_id, :integer
  end
end
