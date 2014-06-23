class AddIndexToEpisodesDate < ActiveRecord::Migration
  def change
    add_index :episodes, :published_on
  end
end
