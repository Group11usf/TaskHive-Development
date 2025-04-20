module ApplicationHelper
  def hide_container?
    (controller_name == 'sessions' && action_name == 'new') ||
    (controller_name == 'users' && action_name == 'new')
  end
end
