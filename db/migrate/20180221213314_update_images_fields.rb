class UpdateImagesFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :filepicker_url
    add_column :images, :image_url, :text
  end
end
