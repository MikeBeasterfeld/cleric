class RemoveColumnImageFileSizeFromShows < ActiveRecord::Migration
  def change
  	remove_column :shows, :image_file_size
  end
end
