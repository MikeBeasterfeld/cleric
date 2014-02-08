class Episode < ActiveRecord::Base
	has_many :episodehosts
	has_many :users, :through => :episodehosts

	belongs_to :show
end
