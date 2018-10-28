class UsersController < ApplicationController
  before_action :new
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to('/users/index')
  end

  def update
  end



  private
    def user_params
      params.require(:user).permit(:name,:email)
    end

end
