class AddUploadersToMedia < ActiveRecord::Migration
  def change
    add_column :media, :localmedia, :string
    add_column :media, :ftpmedia, :string
    add_column :media, :awsmedia, :string
  end
end
