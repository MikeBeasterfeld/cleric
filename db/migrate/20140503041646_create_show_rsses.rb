class CreateShowRsses < ActiveRecord::Migration
  def change
    create_table :show_rsses do |t|
      t.integer :show_id
      t.integer :rss_id

      t.timestamps
    end
  end
end
