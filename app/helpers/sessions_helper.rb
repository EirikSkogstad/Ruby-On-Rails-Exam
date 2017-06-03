module SessionsHelper
  def is_user_admin

    username = session[:username]
    unless username.nil?
      puts username
      user = User.find_by(username: username)
      return user.is_admin
    end
    return false
  end
end
