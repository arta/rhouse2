module ApplicationHelper
  # Set CSS class .current
  def current?(target_page)
    'current' if current_page?(target_page)
  end
end
