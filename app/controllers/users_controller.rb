class UsersController < ApplicationController
  layout "user"
  def index
   @users = User.all
  end
 
  def show
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
  end
 
  def edit
    @user = User.find(params[:id])
  end
 
  def create
    @user = User.new(user_params)
 
    if @user.save
      puts "===== user created ===== #{@user.inspect} ====="
      UserNotificationMailer.create_user(@user).deliver_now
      redirect_to @user
    else
      puts "===== user errors ===== #{@user.errors.full_messages} ====="
      render 'new'
    end
  end
 
  def update
    @user = User.find(params[:id])
 
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
 
  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end
 
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role_id )
    end
  
end
