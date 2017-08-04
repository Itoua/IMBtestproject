class AddImageToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :user_id, :integer
    add_column :photos, :image_id, :string
    add_column :photos, :public_view, :boolean
  end
end
