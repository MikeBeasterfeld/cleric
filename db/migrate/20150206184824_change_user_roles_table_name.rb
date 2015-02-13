class ChangeUserRolesTableName < ActiveRecord::Migration
  def change
    drop_table :user_roles

    create_table :userroles do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end    

    Role::ROLES.each do |role|
      Role.create(:name => role)
    end
  end
end
