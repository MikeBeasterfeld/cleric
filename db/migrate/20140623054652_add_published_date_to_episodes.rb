class AddPublishedDateToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :published_on, :date
  end
end
