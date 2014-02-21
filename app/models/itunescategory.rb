class Itunescategory < ActiveRecord::Base


	rails_admin do
    object_label_method :itunescategory_label_method
    list do
    	sort_by :category
    	field :category do
    		sort_reverse false
    	end
    end
  end

  def itunescategory_label_method
    return "#{self.category}" if self.subcategory.nil?
    "#{self.category} - #{self.subcategory}"
  end
end
