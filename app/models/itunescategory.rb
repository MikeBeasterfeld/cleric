class Itunescategory < ActiveRecord::Base

  default_scope { order(:category, :subcategory)}

  def name
    return self.category + ':' + self.subcategory if !self.subcategory.nil?
    self.category
  end

end
