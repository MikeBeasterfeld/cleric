class AddNameToCmstemplates < ActiveRecord::Migration
  def change
    add_column :cms_templates, :name, :string
  end
end
