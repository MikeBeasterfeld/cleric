class Role < ActiveRecord::Base
  ROLES = %w[admin templates users shows episodes]

  validates_uniqueness_of :name

  has_many :userroles
  has_many :users, :through => :userroles
end
