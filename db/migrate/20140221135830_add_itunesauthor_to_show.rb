class AddItunesauthorToShow < ActiveRecord::Migration
  def change
    add_column :shows, :itunesauthor, :string
  end
end
