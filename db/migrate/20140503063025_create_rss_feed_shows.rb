class CreateRssFeedShows < ActiveRecord::Migration
  def change
    create_table :rss_feed_shows do |t|
      t.integer :show_id
      t.integer :rss_feed_id

      t.timestamps
    end
  end
end
