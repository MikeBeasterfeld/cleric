class AddTwitterOptionEmailOptionAndAvatarToUser < ActiveRecord::Migration
  def change
    add_column :users, :show_twitter, :boolean
    add_column :users, :show_email, :boolean
    add_column :users, :avatar, :string
  end
end
