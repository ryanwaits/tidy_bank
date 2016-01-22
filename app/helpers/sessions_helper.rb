module SessionsHelper
  def log_in(parent)
      session[:parent_id] = parent.id
  end

  def logged_in?
    unless session[:parent_id].nil?
    end
  end
end
