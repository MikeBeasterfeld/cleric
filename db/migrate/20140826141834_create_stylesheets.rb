class CreateStylesheets < ActiveRecord::Migration
  def change
    create_table :stylesheets do |t|
      t.string :name
      t.string :controller
      t.string :action
      t.boolean :active

      t.timestamps
    end
  end
end
