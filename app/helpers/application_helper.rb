module ApplicationHelper
  def current_user
    User.find_by(uid: session[:user_id])
  end
end
