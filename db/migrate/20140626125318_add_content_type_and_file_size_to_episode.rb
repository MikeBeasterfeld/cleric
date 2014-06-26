class AddContentTypeAndFileSizeToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :content_type, :string
    add_column :episodes, :file_size, :integer
  end
end
