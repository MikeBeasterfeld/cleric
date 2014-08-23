class Show < ActiveRecord::Base
  include FriendlyId
  include Bootsy::Container
  friendly_id :name, :use => :slugged

  mount_uploader :uploaded_image, ShowiconUploader

	has_many :showhosts
	has_many :hosts, :through => :showhosts, :source => :user

	has_many :episodes

  has_many :rss_feed_shows
  has_many :rss_feeds, :through => :rss_feed_shows

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


  def latest
    self.episodes.latest
  end

  def self.sample
    show = Show.new(id: 1, name: 'Test Show Name', description: 'Test show sample description', slug: 'example-slug')

    def show.teach_method(name, &block)
      (class << self; self; end).class_eval do
        define_method name, &block
      end
    end

    show.instance_variable_set(:@test_show, show)

    show.teach_method(:image) do 
      'missing_image.png'
    end

    show.hosts << User.sample


    show
  end

end
