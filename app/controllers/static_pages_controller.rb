class StaticPagesController < ApplicationController
  load_and_authorize_resource :show, :parent => false
  load_and_authorize_resource :episode, :parent => false

	def index
    @episodes = @episodes.where(:live => true) if !current_user.try('admin?')
	end

end
