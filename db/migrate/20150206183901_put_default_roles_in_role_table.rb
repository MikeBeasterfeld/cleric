class PutDefaultRolesInRoleTable < ActiveRecord::Migration
  def change
    Role::ROLES.each do |role|
      Role.create(:name => role)
    end
  end
end
