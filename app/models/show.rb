class Show < ActiveRecord::Base
	has_many :showhosts
	has_many :hosts, :through => :showhosts, :source => :user

	has_many :episodes

  def image
    if self.icon.nil? || self.icon.empty?
      "missing_show.png"
    else
      self.icon
    end
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
