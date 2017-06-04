module SessionsHelper
  def is_user_admin
    username = session[:username]
    unless username.nil?
      puts username
      user = User.find_by(username: username)
      if user.nil?
        return false
      end
      return user.is_admin
    end
    return false
  end
end
