class RemoveColumnImageUpdatedAtFromShows < ActiveRecord::Migration
  def change
  	remove_column :shows, :image_updated_at
  end
end
