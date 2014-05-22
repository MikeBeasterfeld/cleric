class DropRssesTable < ActiveRecord::Migration
  def change
    drop_table :rsses
  end
end
