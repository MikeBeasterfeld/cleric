class RemoveColumnIconFromShows < ActiveRecord::Migration
  def change
  	remove_column :shows, :icon
  end
end
