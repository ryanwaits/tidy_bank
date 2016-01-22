module SessionsHelper
  def log_in(parent)
      session[:parent_id] = parent.id
      session[:child_id] = nil
  end

  def child_log_in(child)
    session[:child_id] = child.id
    session[:parent_id] = nil
  end
  
end
