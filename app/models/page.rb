class Page < ActiveRecord::Base
  include FriendlyId

  friendly_id :title, :use => :slugged

  validates_presence_of :title, :slug

  def should_generate_new_friendly_id?
    slug.empty?
  end

end
