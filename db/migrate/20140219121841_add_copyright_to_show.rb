class AddCopyrightToShow < ActiveRecord::Migration
  def change
    add_column :shows, :copyright, :string
  end
end
