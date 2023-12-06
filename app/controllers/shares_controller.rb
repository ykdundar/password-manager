class SharesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_password

  def new
    @users = User.excluding(current_user)
                .excluding(@password.users) #Excludes users that were already assigned
    @user_password = UserPassword.new
  end

  def create

  end

  def destroy

  end

  private

  def set_password
    @password = current_user.passwords.find(params[:password_id])
  end
end
