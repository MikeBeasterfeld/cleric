class AddFiletypeToMedia < ActiveRecord::Migration
  def change
    add_column :media, :filetype, :string
  end
end
