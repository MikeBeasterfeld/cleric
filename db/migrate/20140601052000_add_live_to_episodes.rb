class AddLiveToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :live, :boolean, :default => false
  end
end
