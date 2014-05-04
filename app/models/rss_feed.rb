class RssFeed < ActiveRecord::Base
  include FriendlyId

  friendly_id :name, :use => :slugged

  validates_presence_of :name

  has_many :rss_feed_shows
  has_many :shows, :through => :rss_feed_shows
  has_many :episodes, :through => :shows

  accepts_nested_attributes_for :rss_feed_shows
end
