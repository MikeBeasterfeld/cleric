class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string

    User.each do |user|
      user.role = 'admin' if user.admin?
    end
  end
end
