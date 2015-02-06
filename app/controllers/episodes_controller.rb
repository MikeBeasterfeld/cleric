class EpisodesController < ApplicationController
  load_and_authorize_resource :show, :find_by => :slug
  load_and_authorize_resource :episode, :through => :show, :find_by => :slug, :except => [:preview]

  # GET /episodes
  # GET /episodes.json
  def index
  end

  # GET /episodes/1
  # GET /episodes/1.json
  def show
    @resource = [@show, @episode]
    @page_title = "#{@show.name} ##{@episode.number} - #{@episode.title}"
  end

  # GET /episodes/new
  def new
    @resource = [@show, @episode]
  end

  # GET /episodes/1/edit
  def edit
    @include_bootsy = true
    @resource = [@show, @episode]
  end

  def audio
    @episode.increment!(:downloads)
    redirect_to @episode.media.to_s, status: 302
  end

  # POST /episodes
  # POST /episodes.json
  def create
    respond_to do |format|
      if @episode.save
        Rails.logger.debug('----Created Episode')
        format.html { redirect_to [@show, @episode], notice: 'Episode was successfully created.' }
        format.json { render action: 'show', status: :created, location: @episode }
      else
        format.html { render action: 'new' }
        format.json { render json: @episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /episodes/1
  # PATCH/PUT /episodes/1.json
  def update
    respond_to do |format|
      if @episode.update(episode_params)
        format.html { redirect_to show_episode_path(@episode.show, @episode), notice: 'Episode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @episode.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @episode.destroy
    respond_to do |format|
      format.html { redirect_to episodes_url }
      format.json { head :no_content }
    end
  end


  def preview
#    authorize! :read, current_user
    @notes = Episode.render_markdown(params[:content])
    render

    # begin
    #   @episode.notes
    # rescue Exception => e
    #   if e.is_a?(::SyntaxError)
    #     render json: { :error => e.message, :line =>  (exception.message.scan(/:(\d+)/).first || ["??"]).first }
    #   else
    #     line = (e.backtrace[0].scan(/:(\d+)/).first || ["??"]).first
    #     render json: { :error => "Line #{line}: #{e.message}", :line => line }
    #   end
    # end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode
      @episode = Show.friendly.find(params[:show_id]).episodes.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def episode_params
      params.require(:episode).permit(:title, :subtitle, :number, :part, :description, :notes, :media, :slug, :show_id, :uploaded_image, :bootsy_image_gallery_id, :explicit, :live, :preview, :published_on, :host_ids => [], :guest_ids => [])
    end
end

