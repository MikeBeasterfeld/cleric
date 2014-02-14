class RemoveColumnImageContentTypeFromShows < ActiveRecord::Migration
  def change
  	remove_column :shows, :image_content_type
  end
end
