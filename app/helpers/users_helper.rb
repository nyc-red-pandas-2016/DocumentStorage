module UsersHelper

  def current_user
    # debugger
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_user
    redirect_to '/sessions/login' unless current_user
  end


  def login?
    !!current_user
  end
end
