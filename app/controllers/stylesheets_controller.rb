class StylesheetsController < ApplicationController
  load_and_authorize_resource :except => [:show]

  def index
    redirect_to edit_stylesheet_path(@stylesheets.first)
  end

  def show
    Rails.logger.debug('hello')
    Rails.logger.debug(Rails.application.assets.find_asset("glyphicons-halflings-regular"))
#    Rails.logger.debug(Rails.application.assets.instance_variable_get("@assets").inspect)
#    Rails.logger.debug(Rails.application.assets.instance_variable_get("@digests").inspect)

    @stylesheet = Stylesheet.find_by_fingerprint(params[:id])
    authorize! :show, @stylesheet
    render :text => @stylesheet.user_stylesheet.html_safe
  end

  def new
  end

  def edit
  end

  def create
    @stylesheet = Stylesheet.new(stylesheet_params)

    respond_to do |format|
      if @stylesheet.save
        format.html { redirect_to @stylesheet, notice: 'Stylesheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stylesheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @stylesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @stylesheet.update(stylesheet_params)
        format.html { redirect_to edit_stylesheet_path(@stylesheet), notice: 'Stylesheet was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stylesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stylesheet.destroy
    respond_to do |format|
      format.html { redirect_to stylesheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def stylesheet_params
      params.require(:stylesheet).permit(Stylesheet.variable_names)
    end
end
