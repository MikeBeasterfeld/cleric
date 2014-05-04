class AddSlugToRssFeeds < ActiveRecord::Migration
  def change
    add_column :rss_feeds, :slug, :string
    add_index :rss_feeds, :slug, unique: true
  end
end
