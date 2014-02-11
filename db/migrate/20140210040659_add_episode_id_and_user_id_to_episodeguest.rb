class AddEpisodeIdAndUserIdToEpisodeguest < ActiveRecord::Migration
  def change
  	add_column :episodeguests, :episode_id, :integer
  	add_column :episodeguests, :user_id, :integer
  end
end
