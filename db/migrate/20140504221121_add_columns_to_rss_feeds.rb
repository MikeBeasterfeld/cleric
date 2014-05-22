class AddColumnsToRssFeeds < ActiveRecord::Migration
  def change
    add_column :rss_feeds, :description, :string
    add_column :rss_feeds, :language, :string
    add_column :rss_feeds, :copyright, :string
    add_column :rss_feeds, :owner_id, :integer
    add_column :rss_feeds, :itunescategory_id, :integer
    add_column :rss_feeds, :itunesauthor, :string
  end
end
