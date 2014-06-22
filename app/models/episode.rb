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

  def live?
    self.live == "true"
  end

  def preview?
    self.preview == "true"
  end

end
