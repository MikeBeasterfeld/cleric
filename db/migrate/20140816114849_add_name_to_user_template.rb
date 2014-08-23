class AddNameToUserTemplate < ActiveRecord::Migration
  def change
    add_column :user_templates, :name, :string
  end
end
