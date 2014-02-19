class RenameShowIconToUploadedImage < ActiveRecord::Migration
  def change
  	rename_column :shows, :icon, :uploaded_image
  end
end
