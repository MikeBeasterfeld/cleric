class AddLanguageToShow < ActiveRecord::Migration
  def change
    add_column :shows, :language, :string
  end
end
