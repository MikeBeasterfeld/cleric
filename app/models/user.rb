class User < ActiveRecord::Base
	has_many :showhosts
	has_many :shows, :through => :showhosts

	rails_admin do
    configure :showhosts do
      visible(false)
    end

    configure :shows do
      orderable(true) # only for multiselect widget currently. Will add the possibility to order blocks
      # configuration here
    end
  end	
end
