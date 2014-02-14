class RemoveColumnImageFileNameFromShows < ActiveRecord::Migration
  def change
  	remove_column :shows, :image_file_name
  end
end
