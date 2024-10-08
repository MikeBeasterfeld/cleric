class UsersController < ApplicationController
  load_and_authorize_resource :user, :find_by => :slug

  # GET /users
  # GET /users.json
  def index
    @hidden_users = @users.where(:hide_on_bio_page => true).order(name: :asc) if current_user.try('admin?')
    @users = @users.where(:hide_on_bio_page => false).order(name: :asc)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @resource = @user
    @hosted_episodes = @user.hostepisodes.accessible_by(current_ability)
    @guest_episodes = @user.guestepisodes.accessible_by(current_ability)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.password = @user.password_confirmation = SecureRandom.hex

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def edit_password
    @user = User.find(current_user.id)
    if can? :update_password_for, @user
      render "edit_password"
    else
      redirect_to root_path
    end
  end  

  def update_password
    @user = User.find(current_user.id)
    if can? :update_password_for, @user
      if @user.update(user_params)
        # Sign in the user by passing validation in case their password changed
        sign_in @user, :bypass => true
        redirect_to root_path
      else
        render "edit_password"
      end
    else
      redirect_to root_path
    end
  end  

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      permitted = [:username, :name, :bio, :twitter, :password, :password_confirmation, :email, :show_titter, :show_email, :avatar, :hide_on_bio_page, :role_ids => []]
      permitted << :role if current_user.admin?
      params.require(:user).permit(permitted)
    end
end
