module ApplicationHelper
  # Return CSS class 'current <showing>' (& implicit true), or false for nav
  def current?(link_paths)
    if link_paths.is_a? Array
      if link_paths.any?{ |path| current_page?(path) && path.in?(parent_paths) }
        'current showing'
      elsif link_paths.any?{ |path| current_page?(path) }
        'current'
      end
    elsif link_paths.is_a? String
      path = link_paths
      'current showing' if current_page?(path)
    end
  end

  def exterior_paths
    [exterior_path, roofing_path, siding_path, gutters_path, green_path,
      stone_path, decks_path]
  end

  def interior_paths
    [interior_path, kitchens_path, bathrooms_path, flooring_path, windows_path]
  end

  def mend_paths
    [mend_path, hail_path, ice_path, snow_path, bats_path]
  end

  def parent_paths
    [exterior_path, interior_path, mend_path, portfolios_path]
  end

  def portfolios_paths
    [portfolios_path, portfolios_roofing_path, portfolios_siding_path,
      portfolios_decks_path, portfolios_flooring_path, portfolios_windows_path]
  end
end
