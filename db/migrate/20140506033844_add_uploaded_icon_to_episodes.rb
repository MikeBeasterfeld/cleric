class AddUploadedIconToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :uploaded_image, :string
  end
end
