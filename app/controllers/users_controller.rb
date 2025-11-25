class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User was created succesfully. Welcome to the Alpha-Blog #{@user}"
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
  end

  def index
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Your profile was updated successfully."
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
