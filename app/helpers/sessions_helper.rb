module SessionsHelper

 def current_user
    @current_user ||= session[:user_id]
  end

  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def logged_in?
    if current_user == nil
      redirect_to "sign_in"
    end
  end

  def logout
    @current_user = session[:user_id] = nil
  end

end