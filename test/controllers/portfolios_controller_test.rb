require 'test_helper'

class PortfoliosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portfolios_index_url
    assert_response :success
  end

  test "should get kitchens" do
    get portfolios_kitchens_url
    assert_response :success
  end

  test "should get bathrooms" do
    get portfolios_bathrooms_url
    assert_response :success
  end

  test "should get roofing" do
    get portfolios_roofing_url
    assert_response :success
  end

  test "should get siding" do
    get portfolios_siding_url
    assert_response :success
  end

  test "should get windows" do
    get portfolios_windows_url
    assert_response :success
  end

  test "should get decks" do
    get portfolios_decks_url
    assert_response :success
  end

  test "should get flooring" do
    get portfolios_flooring_url
    assert_response :success
  end

end
