class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :showhosts
	has_many :shows, :through => :showhosts

	has_many :episodehosts
	has_many :hostepisodes, :through => :episodehosts, :source => :user

  has_many :episodeguests
  has_many :guestepisodes, :through => :episodeguests, :source => :user
end
