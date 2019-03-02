module ApplicationHelper
  def admin_action?
    request.fullpath.split('/').last == 'admin'
  end

  def admin_controller?
    request.fullpath.split('/').second == 'admin'
  end

  # Return CSS class 'current <view>'/true or nil/false for nav items styling
  def current_view?(link_paths)
    if link_paths.is_a? String
      path = link_paths
      'current view' if current_page?(path)
    elsif link_paths.is_a? Array
      if link_paths.any?{ |path| current_page?(path) && path.in?(parent_paths) }
        'current view'
      elsif link_paths.any?{ |path| current_page?(path) } && link_paths.size > 10
        # this is one of services_paths on ul.nav.large.menu
        'current view'
      elsif link_paths.any?{ |path| current_page?(path) }
        'current'
      end
    end
  end

  # Header nav helper
  def exterior_paths
    [exterior_path, roofing_path, siding_path, gutters_path, green_path,
      stone_path, decks_path]
  end

  # RHouse2 Google Cloud Storage
  # TODO: temporary, move to RH2's permanent location for production
  def gcs(asset_path)
    "https://storage.googleapis.com/rhouse2/#{asset_path}"
  end

  # Header nav helper
  def interior_paths
    [interior_path, kitchens_path, bathrooms_path, flooring_path, windows_path]
  end

  # Header nav helper
  def mend_paths
    [mend_path, hail_path, ice_path, snow_path, bats_path]
  end

  # Header nav helper
  def parent_paths
    [exterior_path, interior_path, mend_path, portfolios_path]
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
  def portfolios_paths
    [portfolios_path, portfolios_roofing_path, portfolios_siding_path,
      portfolios_decks_path, portfolios_flooring_path, portfolios_windows_path]
  end

  # Header nav helper
  def services_paths
    exterior_paths + interior_paths + mend_paths
  end

  def show_admin_header_nav?
    admin_controller? ||
    controller_name == 'registrations' && action_name != 'new'
  end
end
