module SessionsHelper
  def log_in(user)
      if user.class == Parent
          session[:parent_id] = user.id
          session[:child_id] = nil
      else
          session[:child_id] = user.id
          session[:parent_id] = nil
      end
  end

  def log_out
    session[:parent_id], session[:child_id] = nil
  end

end
