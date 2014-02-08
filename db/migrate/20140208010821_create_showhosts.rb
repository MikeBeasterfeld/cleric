class CreateShowhosts < ActiveRecord::Migration
  def change
    create_table :showhosts do |t|
      t.integer :show_id
      t.integer :user_id

      t.timestamps
    end
  end
end
