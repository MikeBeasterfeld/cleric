class AddAreaAndContentToUserTemplateTable < ActiveRecord::Migration
  def change
    add_column :user_templates, :area, :string
    add_column :user_templates, :content, :text
  end
end
