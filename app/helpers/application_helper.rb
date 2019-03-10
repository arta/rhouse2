module ApplicationHelper
  def admin_action?
    request.fullpath.split('/').last == 'admin'
  end

  def admin_controller?
    request.fullpath.split('/').second == 'admin'
  end

  # Return CSS class 'current <view>'/true or nil/false to style menu items
  # Call current_view?() when passing a single path
  def current_view?(item_path_or_paths_collection)
    if item_path_or_paths_collection.is_a? String
      item_path = item_path_or_paths_collection
      # menu item path is current view of a final destination page
      'current view' if current_page?(item_path)
    elsif item_path_or_paths_collection.is_a? Array
      item_paths_collection = item_path_or_paths_collection
      if item_paths_collection.any?{ |collection_path|
        current_page?(collection_path) && collection_path.in?(pantheons_paths) }
        # menu item path is current view of a pantheon page
        'current view'
      elsif item_paths_collection.any?{ |collection_path|
        current_page?(collection_path) }
        # menu item path is along the way to a final destination page
        'current'
      end
    end
  end
  # Call current_view_in?() when interrogating paths collection to assign class
  alias current_view_in? current_view?
  # Call current_page_in?() when interrogating paths collection for true/false
  alias current_page_in? current_view_in?

  # Header nav helper
  def exterior_paths
    [exterior_path, roofing_path, siding_path, gutters_path, green_path,
      stone_path, decks_path]
  end

  # RHouse2 Google Cloud Storage
  def gcs(asset_path)
    "https://storage.googleapis.com/rhouse2-production-static/#{asset_path}"
    # "https://storage.googleapis.com/rhouse2-development-static/#{asset_path}"
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
  def pantheons_paths
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
