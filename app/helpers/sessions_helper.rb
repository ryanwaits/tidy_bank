module SessionsHelper
  def log_in(parent)
      session[:parent_id] = parent.id
    end
end
