class UsersController < ApplicationController

  before_action :get_user, only: [ :show, :edit, :update ]

  before_action :check_if_logged_in, only: [:edit, :update]

  before_action :correct_user,   only: [:edit, :update]
  # checks if user is the correct user when editing profile

  def get_user
    @user = User.find params["id"]
  end


  def new
    @user = User.new
  end


  def create
    @user = User.create (user_params)
    if params[:file].present?
      # perform file upload
      req = Cloudinary::Uploader.upload params[:file]
      @user.image = req['public_id']
    end

    @user.save


    if @user.id.present?
      session[:user_id] = @user.id  # perform login (set session)
      redirect_to user_path(@user.id)   # /users/17
      else
      render :new
    end
  end


  def edit
    @user = User.find(params[:id])
     redirect_to root_path unless @current_user == @user
  end


  def update
     @user = @current_user # makes sure user can only edit their own profile

    @user.update user_params
    redirect_to user_path( params["id"] )
  end


  def show
    @user = User.find(params[:id])

    # @review = Review.find @current_user

  end


  def index
    @users = User.all
  end


  def destroy
    @user = User.find(params[:id])
    session[:user_id] = nil
    @user.destroy
    redirect_to root_path
  end


  private
    def user_params
      params.require(:user).permit(:email, :username, :image, :password, :password_confirmation)
    end


    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == @current_user
    # end
  end
end
