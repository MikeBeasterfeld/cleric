class AddMillisecondsToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :audio_time, :integer
  end
end
