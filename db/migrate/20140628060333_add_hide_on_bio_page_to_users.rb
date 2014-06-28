class AddHideOnBioPageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hide_on_bio_page, :boolean
  end
end
