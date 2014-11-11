class Blog < ActiveRecord::Base
  include Bootsy::Container
  
  include FriendlyId

  friendly_id :title, :use => :slugged

  belongs_to :postauthor, :class_name => User, :foreign_key => :author

  validates_presence_of :slug

end
