class Episode < ActiveRecord::Base
	has_many :episodehosts
	has_many :users, :through => :episodehosts

	belongs_to :show

	def full_title
		full_title = self.number.to_s

		full_title << " Part #{self.part}" if !self.part.nil?

		full_title << ": #{self.title}"

		return full_title
	end

end
