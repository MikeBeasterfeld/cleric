class CreateEpisodeguests < ActiveRecord::Migration
  def change
    create_table :episodeguests do |t|

      t.timestamps
    end
  end
end
