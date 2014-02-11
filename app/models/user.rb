class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :showhosts
	has_many :shows, :through => :showhosts

	has_many :episodehosts
	has_many :episodes, :through => :episodehosts

  has_many :episodeguests
  has_many :guestepisodes, :through => :episodeguests, :source => :episode

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
