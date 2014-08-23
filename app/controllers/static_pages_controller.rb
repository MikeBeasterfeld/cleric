class StaticPagesController < ApplicationController
  load_and_authorize_resource :show, :parent => false
  load_and_authorize_resource :episode, :parent => false

	def index
    @recent_episodes = @episodes.order(published_on: :desc).limit(7) if !@episodes.empty?
	end

end
