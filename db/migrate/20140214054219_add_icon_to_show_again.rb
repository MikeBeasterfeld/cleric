class AddIconToShowAgain < ActiveRecord::Migration
  def change
    add_column :shows, :icon, :string
  end
end
