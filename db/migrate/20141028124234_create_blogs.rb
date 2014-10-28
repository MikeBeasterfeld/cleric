class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.date :published_on
      t.integer :author

      t.timestamps
    end
  end
end
