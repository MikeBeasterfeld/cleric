class Show < ActiveRecord::Base
  mount_uploader :showicon, ShowiconUploader

	has_many :showhosts
	has_many :hosts, :through => :showhosts, :source => :user

	has_many :episodes

	rails_admin do
    configure :showhosts do
      visible(false)
    end

    configure :hosts do
      orderable(true) # only for multiselect widget currently. Will add the possibility to order blocks
      # configuration here
    end
  end
end
