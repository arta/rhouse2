require 'test_helper'

class Admin::PortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_portfolio = admin_portfolios(:one)
  end

  test "should get index" do
    get admin_portfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_portfolio_url
    assert_response :success
  end

  test "should create admin_portfolio" do
    assert_difference('Admin::Portfolio.count') do
      post admin_portfolios_url, params: { admin_portfolio: { description: @admin_portfolio.description, job_completed_at: @admin_portfolio.job_completed_at, job_started_at: @admin_portfolio.job_started_at, service: @admin_portfolio.service } }
    end

    assert_redirected_to admin_portfolio_url(Admin::Portfolio.last)
  end

  test "should show admin_portfolio" do
    get admin_portfolio_url(@admin_portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_portfolio_url(@admin_portfolio)
    assert_response :success
  end

  test "should update admin_portfolio" do
    patch admin_portfolio_url(@admin_portfolio), params: { admin_portfolio: { description: @admin_portfolio.description, job_completed_at: @admin_portfolio.job_completed_at, job_started_at: @admin_portfolio.job_started_at, service: @admin_portfolio.service } }
    assert_redirected_to admin_portfolio_url(@admin_portfolio)
  end

  test "should destroy admin_portfolio" do
    assert_difference('Admin::Portfolio.count', -1) do
      delete admin_portfolio_url(@admin_portfolio)
    end

    assert_redirected_to admin_portfolios_url
  end
end
