class RemovePageFromCmstemplates < ActiveRecord::Migration
  def change
    remove_column :cms_templates, :page
  end
end
