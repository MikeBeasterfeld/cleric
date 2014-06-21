class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string

    User.all.each do |user|
      user.update_attributes(:role => 'admin') if user.admin?
    end
  end
end
