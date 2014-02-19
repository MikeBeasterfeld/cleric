class AddRemoteImageToShow < ActiveRecord::Migration
  def change
    add_column :shows, :remote_image, :string
  end
end
