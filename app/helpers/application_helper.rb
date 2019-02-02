module ApplicationHelper
  # Return CSS class 'current' (& implicit true), or false in nav bars
  def current?(target)
    if target.is_a? Array
      'current' if target.any?{ |target| current_page?(target) }
    elsif target.is_a? String
      'current' if current_page?(target)
    end
  end
end
