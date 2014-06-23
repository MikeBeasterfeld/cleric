class ShowsController < ApplicationController
  load_and_authorize_resource :show, :find_by => :slug, :except => [:next]

  # GET /shows
  # GET /shows.json
  def index
    @resource = Show.new
  end

  def next
    authorize! :read, Show
    authorize! :read, Episode

    @show = Show.friendly.find(params[:show_id])

    @episode = @show.latest

    if @episode.empty?
      redirect_to @show, :alert => 'No episodes found for this show'
    elsif @episode.live
      redirect_to [@show, @episode]
    else
      render 'episodes/show'
    end
  end

  # GET /shows/1
  # GET /shows/1.json
  def show
    @resource = @show
    @episodes = @show.episodes.order(published_on: :desc).accessible_by(current_ability)
  end

  # GET /shows/new
  def new
    @resource = @show
  end

  # GET /shows/1/edit
  def edit
  end

  # POST /shows
  # POST /shows.json
  def create
    @show = Show.new(show_params)

    respond_to do |format|
      if @show.save
        format.html { redirect_to @show, notice: 'Show was successfully created.' }
        format.json { render action: 'show', status: :created, location: @show }
      else
        format.html { render action: 'new' }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shows/1
  # PATCH/PUT /shows/1.json
  def update
    respond_to do |format|
      if @show.update(show_params)
        format.html { redirect_to @show, notice: 'Show was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shows/1
  # DELETE /shows/1.json
  def destroy
    @show.destroy
    respond_to do |format|
      format.html { redirect_to shows_url }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def show_params
      params.require(:show).permit(:name, :description, :slug, :uploaded_image, :retired, :language, :copyright, :owner_id, :itunescategory_id, :itunesauthor, :host_ids => [])
    end
end
