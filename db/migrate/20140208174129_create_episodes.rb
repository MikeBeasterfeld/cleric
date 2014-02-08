class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :number
      t.integer :part
      t.text :description
      t.text :notes
      t.string :media

      t.timestamps
    end
  end
end
