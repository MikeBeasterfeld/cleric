class Show < ActiveRecord::Base
  include FriendlyId
  friendly_id :name, :use => :slugged

  mount_uploader :icon, ShowiconUploader

  default_scope { where(retired: false) }

	has_many :showhosts
	has_many :hosts, :through => :showhosts, :source => :user

	has_many :episodes

  validates_presence_of :name, :slug

  def should_generate_new_friendly_id?
    name_changed?
  end

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
