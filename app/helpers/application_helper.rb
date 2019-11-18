module ApplicationHelper
  def admin_action?
    request.fullpath.split('/').last == 'admin'
  end

  def admin_controller?
    request.fullpath.split('/').second == 'admin'
  end

  def current_view?(menu_item_path)
    'current view' if current_page?(menu_item_path)
  end

  # Call current_view_in?() to assign class(es) to a collection path
  def current_view_in?(menu_item_paths_collection)
    if menu_item_paths_collection.any?{ |member_path|
      current_page?(member_path) &&
      member_path.in?(pantheons_paths_collection) }
      # menu item path is current view of a pantheon page
      'current view'
    elsif menu_item_paths_collection.any?{ |member_path|
      current_page?(member_path) }
      # menu item path is along the way to a final destination page
      'current'
    end
  end
  # Call current_page_in?() for true/false of current page in paths collection
  alias current_page_in? current_view_in?

  # Header nav helper
  def exterior_services_paths_collection
    [exterior_services_path,
      roofing_path, siding_path, gutters_path, green_roofs_path,
      cultured_stone_path, decks_path]
  end

  # RHouse2 Google Cloud Storage
  def gcs(asset_path)
    development_staging = Rails.env.development? || ENV['STAGING'].present?
    if development_staging
      "https://storage.googleapis.com/rhouse2-development-staging-static/#{asset_path}"
    else # production
      "https://storage.googleapis.com/rhouse2-production-static/#{asset_path}"
    end
  end

  # Header nav helper
  def interior_services_paths_collection
    [interior_services_path,
      kitchens_path, bathrooms_path, flooring_path, windows_path]
  end

  # Header nav helper
  def other_services_paths_collection
    [other_services_path,
      hail_damage_path, ice_dams_path, snow_removal_path, bat_removal_path]
  end

  # Header nav helper
  def pantheons_paths_collection
    [services_path, portfolios_path]
    # [exterior_services_path, interior_services_path, other_services_path,
    #   portfolios_path]
  end

  # Check for _partials (e.g. _nav_regional) in these locations:
  def path_prefixes
    if admin_action? || admin_controller?
      "admin/#{controller_name}"
    else
      controller_name
    end
  end

  # Header nav helper
  def portfolios_paths_collection
    [portfolios_path,
      portfolios_roofing_path, portfolios_siding_path, portfolios_decks_path,
      portfolios_kitchens_path, portfolios_bathrooms_path,
      portfolios_flooring_path, portfolios_windows_path]
  end

  # Header nav helper
  def all_services_paths_collection
    exterior_services_paths_collection +
    interior_services_paths_collection +
    other_services_paths_collection
  end

  # Header nav helper
  def services_paths_collection
    [services_path,
      kitchens_path, bathrooms_path, roofing_path,
      hail_damage_path, ice_dams_path, bat_removal_path]
  end

  def show_admin_header_nav?
    admin_controller? ||
    controller_name == 'registrations' && action_name != 'new'
  end
end
