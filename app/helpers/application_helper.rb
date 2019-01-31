module ApplicationHelper
  def current?(controller=nil, action=nil)
    'current' if current_page?(controller: controller, action: action)
  end
end
