class UsersController < ApplicationController
  include SessionsHelper
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    redirect_if_user_not_admin
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    redirect_if_user_not_admin
  end

  # GET /users/new
  def new
    @user = User.new
    unless session[:username].nil?
      if is_user_admin
        return
      else
        redirect_to user_already_logged_in_path
      end
    end

  end

  # GET /users/1/edit
  def edit
    redirect_if_user_not_admin
  end

  # POST /users
  # POST /users.json
  def create
    if session[:username].nil?
      @user = User.new(user_params)

      if @user.is_admin.nil?
        @user.is_admin = false
      end

      respond_to do |format|
        if @user.save
          format.html {redirect_to @user, notice: 'User was successfully created.'}
          format.json {render :show, status: :created, location: @user}
        else
          format.html {render :new}
          format.json {render json: @user.errors, status: :unprocessable_entity}
        end
      end
      if @user.valid?
        session[:username] = @user.username
      end
      return
    end

    if is_user_admin
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          format.html {redirect_to @user, notice: 'User was successfully created.'}
          format.json {render :show, status: :created, location: @user}
        else
          format.html {render :new}
          format.json {render json: @user.errors, status: :unprocessable_entity}
        end
      end
      return
    else
      redirect_to user_already_logged_in_path
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    redirect_if_user_not_admin
    respond_to do |format|
      if @user.update(user_params)
        format.html {redirect_to @user, notice: 'User was successfully updated.'}
        format.json {render :show, status: :ok, location: @user}
      else
        format.html {render :edit}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    redirect_if_user_not_admin
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url, notice: 'User was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  def redirect_if_user_not_admin
    unless is_user_admin
      redirect_to user_not_admin_path
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :is_admin, :watchlist)
  end
end
