class StaticPagesController < ApplicationController

	def index
		@shows = Show.all
		@episodes = Episode.find(:all, :order => "id desc", :limit => 5)
	end

end
