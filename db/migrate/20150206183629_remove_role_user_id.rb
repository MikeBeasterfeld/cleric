class RemoveRoleUserId < ActiveRecord::Migration
  def change
    remove_column :roles, :user_id
  end
end
