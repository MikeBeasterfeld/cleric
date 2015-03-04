class MediaController < ApplicationController
  load_and_authorize_resource :medium

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    respond_to do |format|
      if @medium.save
        format.html { redirect_to @medium, notice: 'Medium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @medium }
      else
        format.html { render action: 'new' }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @medium.update(medium_params)
        format.html { redirect_to @medium, notice: 'Medium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @medium.destroy
    respond_to do |format|
      format.html { redirect_to media_url }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def medium_params
      params.require(:medium).permit(:name, :size, :length, :filetype, :localmedia, :ftpmedia, :awsmedia)
    end
end
