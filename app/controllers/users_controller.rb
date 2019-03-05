class UsersController < ApplicationController
before_action :set_user, only: [:show, :destroy]

  def index
@users = User.all

  end

  def new

    @user = User.new

  end

def create
  @user = User.new(user_params)
if @user.save
  redirect_to @user
begin
  render :new

end 
end


  
else
  
end
end

  def show

  end

def destroy
@user.destroy
redirect_to_users_path

private

def user_params
params.require(:user).permit(:first_name, last_name)
end

def set_user
  @user = User.find(params([:id]))

end
