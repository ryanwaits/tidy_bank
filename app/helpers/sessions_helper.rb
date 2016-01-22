module SessionsHelper
  def log_in(parent)
      session[:parent_id] = parent.id
      session[:log_in_child_id] = nil
  end

  def child_log_in(child)
    session[:log_in_child_id] = child.id
    session[:parent_id] = nil
  end

end
