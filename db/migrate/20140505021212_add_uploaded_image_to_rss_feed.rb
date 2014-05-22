class AddUploadedImageToRssFeed < ActiveRecord::Migration
  def change
    add_column :rss_feeds, :uploaded_image, :string
  end
end
