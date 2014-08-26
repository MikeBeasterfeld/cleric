class AddContentToStylesheet < ActiveRecord::Migration
  def change
    add_column :stylesheets, :content, :text
  end
end
