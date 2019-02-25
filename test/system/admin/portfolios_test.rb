require "application_system_test_case"

class Admin::PortfoliosTest < ApplicationSystemTestCase
  setup do
    @admin_portfolio = admin_portfolios(:one)
  end

  test "visiting the index" do
    visit admin_portfolios_url
    assert_selector "h1", text: "Admin/Portfolios"
  end

  test "creating a Portfolio" do
    visit admin_portfolios_url
    click_on "New Admin/Portfolio"

    fill_in "Description", with: @admin_portfolio.description
    fill_in "Job completed at", with: @admin_portfolio.job_completed_at
    fill_in "Job started at", with: @admin_portfolio.job_started_at
    fill_in "Service", with: @admin_portfolio.service
    click_on "Create Portfolio"

    assert_text "Portfolio was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio" do
    visit admin_portfolios_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_portfolio.description
    fill_in "Job completed at", with: @admin_portfolio.job_completed_at
    fill_in "Job started at", with: @admin_portfolio.job_started_at
    fill_in "Service", with: @admin_portfolio.service
    click_on "Update Portfolio"

    assert_text "Portfolio was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio" do
    visit admin_portfolios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio was successfully destroyed"
  end
end
