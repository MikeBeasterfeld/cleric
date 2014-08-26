class StylesheetsController < ApplicationController
  load_and_authorize_resource :stylesheet

  def index
  end

  def show
    respond_to do |format|
      format.html { render }
      format.css { render layout: false,  text: @stylesheet.content }
    end
  end

  def new
  end

  def edit
  end

  def create
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
        format.html { redirect_to @stylesheet, notice: 'Stylesheet was successfully updated.' }
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
      params.require(:stylesheet).permit(:name, :controller, :action, :active, :content)
    end
end
