class UserTemplatesController < ApplicationController
  load_and_authorize_resource :user_template

  # GET /user_templates
  # GET /user_templates.json
  def index
    @user_templates = UserTemplate.all
  end

  # GET /user_templates/1
  # GET /user_templates/1.json
  def show
  end

  def preview
    area = params[:area] || @user_template.area
    @template_content = params[:template_content] || 'No content'
    case area
    when 'show'
      @show = Show.sample
    when 'home'
      @shows = Show.all
      @recent_episodes = Episode.order(published_on: :desc)
    when 'episode'
      @episode = Episode.sample
      @show = @episode.show
    end

    if true
      begin
        render 
      rescue Exception => e
        if e.is_a?(::SyntaxError)
          render json: { :error => e.message, :line =>  (exception.message.scan(/:(\d+)/).first || ["??"]).first }
        else
          line = (e.backtrace[0].scan(/:(\d+)/).first || ["??"]).first
          render json: { :error => "Line #{line}: #{e.message}", :line => line }
        end
      end
    end
  end

  # GET /user_templates/new
  def new
    @user_template = UserTemplate.new
  end

  # GET /user_templates/1/edit
  def edit
  end

  # POST /user_templates
  # POST /user_templates.json
  def create
    @user_template = UserTemplate.new(user_template_params)

    respond_to do |format|
      if @user_template.save
        format.html { redirect_to @user_template, notice: 'User template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_templates/1
  # PATCH/PUT /user_templates/1.json
  def update
    respond_to do |format|
      if @user_template.update(user_template_params)
        format.html { redirect_to @user_template, notice: 'User template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_templates/1
  # DELETE /user_templates/1.json
  def destroy
    @user_template.destroy
    respond_to do |format|
      format.html { redirect_to user_templates_url }
      format.json { head :no_content }
    end
  end

  private
    def user_template_params
      params.require(:user_template).permit(:area, :content, :name)
    end
end
