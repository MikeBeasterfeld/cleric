class StaticPagesController < ApplicationController

	def index
		@shows = Show.all
		@episodes = Episode.order("id desc").limit(5)
	end

end
