class UsersController < ApplicationController

  before_action :get_user,       only: [ :show, :edit, :update ]


  def get_user
    @user = User.find params["id"]
  end

  def new
    @user = User.new

  end

  def create
    @user = User.create user_params
    if @user.id.present?
      session[:user_id] = @user.id  # perform login (set session)
      redirect_to user_path(@user.id)   # /users/17
      else
      render :new
    end

  end

  def edit
    redirect_to root_path unless @current_user == @user

  end

  def update
    @user = @current_user # makes sure user can only edit their own profile

    @user.update user_params
    redirect_to user_path( params["id"] )

  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :image, :password, :password_confirmation)
  end

end
