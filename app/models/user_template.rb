class UserTemplate < ActiveRecord::Base

  def self.areas
    [
      'header',
      'footer',
      'home',
      'people',
      'show',
      'episode',
      'blogindex',
      'blogentry'
    ]
  end
end
