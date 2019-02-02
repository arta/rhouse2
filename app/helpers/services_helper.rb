module ServicesHelper
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
end
