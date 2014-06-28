class SetUsersToBeVisibleOnBioPageByDefault < ActiveRecord::Migration
  def change
    User.all.each do |user|
      user.update_attributes(:hide_on_bio_page => false)
    end
  end
end
