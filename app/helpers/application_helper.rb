module ApplicationHelper
  # Return CSS class 'current' (& implicit true), or false in nav bars
  def current?(target)
    if target.is_a? Array
      'current' if target.any?{ |target| current_page?(target) }
    elsif target.is_a? String
      'current' if current_page?(target)
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

  def portfolios_paths
    [portfolios_path, portfolios_roofing_path, portfolios_siding_path,
      portfolios_decks_path, portfolios_flooring_path, portfolios_windows_path]
  end
end
