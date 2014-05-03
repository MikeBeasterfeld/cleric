class StaticPagesController < ApplicationController

	def index
		@shows = Show.all
		@episodes = Episode.order("id desc").limit(5)

		mytemplate = CmsTemplates.where(:name => 'index.liquid').first.template
		@user_template = Liquid::Template.parse(mytemplate).render( 'shows' => @shows.map{ |show| show.to_liquid } )
	end

end
