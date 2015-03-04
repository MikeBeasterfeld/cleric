class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.string :type
      t.integer :size
      t.integer :length

      t.timestamps
    end
  end
end
