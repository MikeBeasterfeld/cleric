class AddSlugToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :slug, :string
  end
end
