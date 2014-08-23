class Episode < ActiveRecord::Base
  include Bootsy::Container

  include FriendlyId
  friendly_id :number_and_part, :use => [:slugged, :scoped], :scope => :show

  mount_uploader :uploaded_image, EpisodeiconUploader
  mount_uploader :media, MediaUploader

	has_many :episodehosts
	has_many :hosts, :through => :episodehosts, :source => :user

	has_many :episodeguests
	has_many :guests, :through => :episodeguests, :source => :user

	belongs_to :show

  validates_presence_of :title, :slug, :number

  scope :latest, -> { order(created_at: :desc).first }

  after_initialize :set_defaults

  def set_defaults
    self.published_on ||= Date.current
  end

  def number_and_part
    return "#{number}.#{part}" if !part.nil?
    number
  end

  def should_generate_new_friendly_id?
    number_changed? || part_changed?
  end

	def full_title
		full_title = self.number.to_s

		full_title << " Part #{self.part}" if !self.part.nil?

		full_title << ": #{self.title}"

		return full_title
	end

  def full_title_with_show
    "#{self.show.name} \##{self.full_title}"
  end

  def live?
    self.live
  end

  def preview?
    self.preview
  end

  def web_content_type
    return 'audio/mpeg' if 'audio/mp3' == self.content_type
  end

  def friendly_length
    seconds = self.audio_time
    time_str = ''
    if seconds / 3600 > 0
      time_str << "#{seconds / 3600}:"
      seconds = seconds % 3600
    end
    time_str + "#{seconds / 60}:#{seconds % 60}"
  end

  def self.sample
    show = Show.sample
    episode = Episode.new(description: "Show description", notes: "Show notes", number: 1, title: "Show Title")

    episode.instance_variable_set(:@test_show, show)
    episode.instance_variable_set(:@test_hosts, [User.sample, User.sample, User.sample])
    episode.instance_variable_set(:@test_guests, [User.sample])

    def episode.teach_method(name, &block)
      (class << self; self; end).class_eval do
        define_method name, &block
      end
    end

    episode.teach_method(:show) do @test_show end
    episode.teach_method(:hosts) do @test_hosts end
    episode.teach_method(:guests) do @test_guests end

    episode
  end
end
