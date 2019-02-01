module ServicesHelper
  def current_service_exterior?
    controller_name == 'services' && action_name.in?(exterior_actions)
  end

  def exterior_actions
    %w(exterior roofing green gutters siding stone decks)
  end

  def current_service_interior?
    controller_name == 'services' && action_name.in?(interior_actions)
  end

  def interior_actions
    %w(interior kitchens bathrooms flooring windows)
  end

  def current_service_mend?
    controller_name == 'services' && action_name.in?(mend_actions)
  end

  def mend_actions
    %w(mend hail ice snow bats)
  end
end
