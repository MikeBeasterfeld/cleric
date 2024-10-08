class RssFeed < ActiveRecord::Base
  include FriendlyId

  friendly_id :name, :use => :slugged

  mount_uploader :uploaded_image, RssiconUploader

  validates_presence_of :name

  has_many :rss_feed_shows
  has_many :shows, :through => :rss_feed_shows
  has_many :episodes, :through => :shows

  belongs_to :owner, :class_name => 'User'
  belongs_to :itunescategory

  accepts_nested_attributes_for :rss_feed_shows

  def image_full_url
    return "#{self.uploaded_image}" if self.uploaded_image.file
  end

end
