class User < ActiveRecord::Base
  include FriendlyId
  include Bootsy::Container
  friendly_id :name, :use => :slugged

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

	has_many :showhosts
	has_many :shows, :through => :showhosts

	has_many :episodehosts
	has_many :hostepisodes, :through => :episodehosts, :source => :user

  has_many :episodeguests
  has_many :guestepisodes, :through => :episodeguests, :source => :user

  def admin?
    self.admin
  end
end
