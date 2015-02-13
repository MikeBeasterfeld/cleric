class User < ActiveRecord::Base
  include FriendlyId
  include Bootsy::Container
  friendly_id :name, :use => :slugged

  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :showhosts
	has_many :shows, :through => :showhosts

	has_many :episodehosts
	has_many :hostepisodes, :through => :episodehosts, :source => :episode

  has_many :episodeguests
  has_many :guestepisodes, :through => :episodeguests, :source => :episode

  has_many :userroles
  has_many :roles, :through => :userroles

  validates_presence_of :name, :slug, :email

  after_initialize :set_defaults

  def set_defaults
    if self.new_record?
      self.show_twitter = true
      self.show_email = false
      self.hide_on_bio_page = false
    end
  end

  def user_icon
    return self.avatar if self.avatar.file
    return 'missing_image.png'
  end

  def admin?
    self.role == 'admin'
  end

  def editor?
    self.role == 'editor'
  end

  def show_bio?
    self.roles.include? self.role && !self.hide_on_bio_page
  end

  def self.roles_list
    ['admin', 'editor', 'bio-only']
  end

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  def self.sample
    User.new(id: 1, name: "User Name", slug: 'user-name-slug')
  end

end
