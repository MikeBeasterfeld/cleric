class RemoveTypeFromCmstemplates < ActiveRecord::Migration
  def change
    remove_column :cms_templates, :type
  end
end
