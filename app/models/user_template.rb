class UserTemplate < ActiveRecord::Base

  def self.areas
    [
      'header',
      'footer',
      'home',
      'people',
      'show',
      'episode',
      'blog'
    ]
  end
end
