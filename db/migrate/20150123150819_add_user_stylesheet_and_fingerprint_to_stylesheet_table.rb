class AddUserStylesheetAndFingerprintToStylesheetTable < ActiveRecord::Migration
  def change
    add_column :stylesheets, :user_stylesheet, :text    
    add_column :stylesheets, :fingerprint, :string    
  end
end
