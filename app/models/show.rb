class Show < ActiveRecord::Base
  include FriendlyId

  friendly_id :name, :use => :slugged

  mount_uploader :uploaded_image, ShowiconUploader

  default_scope { where(retired: false) }

	has_many :showhosts
	has_many :hosts, :through => :showhosts, :source => :user

	has_many :episodes

  belongs_to :owner, :class_name => 'User'
  belongs_to :itunescategory

  validates_presence_of :name, :slug, :language, :copyright

  after_initialize do
    if new_record?
      self.language ||= 'en-us'
    end
  end

  def image
    return self.uploaded_image if self.uploaded_image.file
    self.remote_image
  end

  def image_full_url(hostname)
    return "http://#{hostname}#{self.uploaded_image}" if self.uploaded_image.file
    self.remote_image
  end

  def should_generate_new_friendly_id?
    name_changed?
  end

  def language_enum
    ['en-us']
  end


  def to_liquid
    { name: self.name, image: self.image }
  end

end
