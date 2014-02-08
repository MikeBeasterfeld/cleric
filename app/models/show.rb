class Show < ActiveRecord::Base
	has_many :showhosts
	has_many :users, :through => :showhosts
end
