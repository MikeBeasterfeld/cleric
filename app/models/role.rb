class Role < ActiveRecord::Base
  ROLES = %w[admin templates users shows episodes]

  has_many :userroles
  has_many :users, :through => :userroles
end
