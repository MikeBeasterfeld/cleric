class RssController < ApplicationController
  before_action :set_rss, only: [:show, :edit, :update, :destroy]

  # GET /rsses
  # GET /rsses.json
  def index
    @rsses = Rss.all
    @new_object_path = new_rss_path
  end

  # GET /rsses/1
  # GET /rsses/1.json
  def show
     @edit_object_path = edit_rss_path(@rss)
  end

  # GET /rsses/new
  def new
    @rss = Rss.new
  end

  # GET /rsses/1/edit
  def edit
  end

  # POST /rsses
  # POST /rsses.json
  def create
    @rss = Rss.new(rss_params)

    respond_to do |format|
      if @rss.save
        format.html { redirect_to @rss, notice: 'Rss was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rss }
      else
        format.html { render action: 'new' }
        format.json { render json: @rss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rsses/1
  # PATCH/PUT /rsses/1.json
  def update
    respond_to do |format|
      if @rss.update(rss_params)
        format.html { redirect_to @rss, notice: 'Rss was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rsses/1
  # DELETE /rsses/1.json
  def destroy
    @rss.destroy
    respond_to do |format|
      format.html { redirect_to rsses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rss
      @rss = Rss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rss_params
      params.require(:rss).permit(:name)
    end
end
