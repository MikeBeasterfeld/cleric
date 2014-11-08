class AddDownloadsToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :downloads, :integer, :default => 0    
  end
end
