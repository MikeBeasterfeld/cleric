class RssFeedShow < ActiveRecord::Base

  belongs_to :show
  belongs_to :rss_feed

end
