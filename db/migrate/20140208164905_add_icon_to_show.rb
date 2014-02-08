class AddIconToShow < ActiveRecord::Migration
  def change
  	add_column :shows, :icon, :string, default: nil
  end
end
