class AddTypeToCmstemplates < ActiveRecord::Migration
  def change
    add_column :cms_templates, :type, :string
  end
end
