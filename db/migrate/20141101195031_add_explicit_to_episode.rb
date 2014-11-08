class AddExplicitToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :explicit, :boolean, :default => false    
  end
end
