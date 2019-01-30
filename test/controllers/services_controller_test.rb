require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get kitchens" do
    get services_kitchens_url
    assert_response :success
  end

  test "should get bathrooms" do
    get services_bathrooms_url
    assert_response :success
  end

  test "should get roofing" do
    get services_roofing_url
    assert_response :success
  end

  test "should get green" do
    get services_green_url
    assert_response :success
  end

  test "should get siding" do
    get services_siding_url
    assert_response :success
  end

  test "should get windows" do
    get services_windows_url
    assert_response :success
  end

  test "should get decks" do
    get services_decks_url
    assert_response :success
  end

  test "should get gutters" do
    get services_gutters_url
    assert_response :success
  end

  test "should get flooring" do
    get services_flooring_url
    assert_response :success
  end

  test "should get stone" do
    get services_stone_url
    assert_response :success
  end

  test "should get hail" do
    get services_hail_url
    assert_response :success
  end

  test "should get ice" do
    get services_ice_url
    assert_response :success
  end

  test "should get snow" do
    get services_snow_url
    assert_response :success
  end

  test "should get bats" do
    get services_bats_url
    assert_response :success
  end

end
