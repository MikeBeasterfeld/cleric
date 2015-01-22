class RemoveStylesheetsTable < ActiveRecord::Migration
  def change
    drop_table :stylesheets
  end
end
