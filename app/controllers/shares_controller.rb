class SharesControllers < ApplicationController
  before_action :authenticate_user!
  before_action :set_password

  def new
    @users = Users.excluding(current_user)
                  .excluding(@password.users)
    @users
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
