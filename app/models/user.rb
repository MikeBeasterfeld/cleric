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

  validates_presence_of :name, :slug, :email

  after_initialize :set_defaults

  def set_defaults
    self.show_twitter = true if self.respond_to? :show_twitter && self.show_twitter.nil?
    self.show_email = false if self.respond_to? :show_email && self.show_email.nil?
    self.hide_on_bio_page = false if self.respond_to? :hide_on_bio_page && self.hide_on_bio_page.nil?
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

  def self.roles
    ['admin', 'editor', 'bio-only']
  end

  def self.sample
    User.new(id: 1, name: "User Name", slug: 'user-name-slug')
  end

end
