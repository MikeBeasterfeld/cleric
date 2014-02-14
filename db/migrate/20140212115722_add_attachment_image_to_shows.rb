class AddAttachmentImageToShows < ActiveRecord::Migration
  def self.up
    change_table :shows do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :shows, :image
  end
end
