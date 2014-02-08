class Show < ActiveRecord::Base
	has_many :showhosts
	has_many :users, :through => :showhosts

	has_many :episodes

	rails_admin do
    configure :showhosts do
      visible(false)
    end

    configure :users do
      orderable(true) # only for multiselect widget currently. Will add the possibility to order blocks
      # configuration here
    end
  end	
end
