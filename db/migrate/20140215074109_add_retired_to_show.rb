class AddRetiredToShow < ActiveRecord::Migration
  def change
    add_column :shows, :retired, :boolean
  end
end
