class AddItunescategoryToShow < ActiveRecord::Migration
  def change
    add_column :shows, :itunescategory_id, :integer
  end
end
