def index
  @passwords = current_user.passwords
end
def new
  @password = Password.new
end
def create
  @password = current_user.passwords.new(password_params)
  if @Password.save
    redirect_to @pasword
  else
    render :new, status: :unprocessable_entity
  end
end

private
def password_params
  params.require(:password).permit(:url, :username, :password)
end
end
