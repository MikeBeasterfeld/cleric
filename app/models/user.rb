class User < ActiveRecord::Base
	has_many :showhosts
	has_many :shows, :through => :showhosts
end
