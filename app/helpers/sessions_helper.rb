module SessionsHelper
  def log_in(parent)
      session[:parent_id] = parent.id
  end

  def child_log_in(child)
    session[:child_id] = child.id
  end
  
end
