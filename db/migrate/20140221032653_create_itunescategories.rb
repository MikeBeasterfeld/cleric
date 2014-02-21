class CreateItunescategories < ActiveRecord::Migration
  def change
    create_table :itunescategories do |t|
      t.string :category
      t.string :subcategory

      t.timestamps
    end
  end
end
