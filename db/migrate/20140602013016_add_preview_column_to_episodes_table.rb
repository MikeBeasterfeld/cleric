class AddPreviewColumnToEpisodesTable < ActiveRecord::Migration
  def change
    add_column :episodes, :preview, :boolean, :default => false
  end
end
