class Show < ActiveRecord::Base
  has_attached_file :image, :default_url => "missing_show.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

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
