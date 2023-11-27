def index
  @passwords = current_user.passwords
end
