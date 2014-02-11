class Episodeguest < ActiveRecord::Base
	belongs_to :episode
	belongs_to :user
end
