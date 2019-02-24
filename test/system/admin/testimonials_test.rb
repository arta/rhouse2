require "application_system_test_case"

class Admin::TestimonialsTest < ApplicationSystemTestCase
  setup do
    @admin_testimonial = admin_testimonials(:one)
  end

  test "visiting the index" do
    visit admin_testimonials_url
    assert_selector "h1", text: "Admin/Testimonials"
  end

  test "creating a Testimonial" do
    visit admin_testimonials_url
    click_on "New Admin/Testimonial"

    fill_in "Body", with: @admin_testimonial.body
    fill_in "Client signature", with: @admin_testimonial.client_signature
    fill_in "Job completed at", with: @admin_testimonial.job_completed_at
    fill_in "Job started at", with: @admin_testimonial.job_started_at
    click_on "Create Testimonial"

    assert_text "Testimonial was successfully created"
    click_on "Back"
  end

  test "updating a Testimonial" do
    visit admin_testimonials_url
    click_on "Edit", match: :first

    fill_in "Body", with: @admin_testimonial.body
    fill_in "Client signature", with: @admin_testimonial.client_signature
    fill_in "Job completed at", with: @admin_testimonial.job_completed_at
    fill_in "Job started at", with: @admin_testimonial.job_started_at
    click_on "Update Testimonial"

    assert_text "Testimonial was successfully updated"
    click_on "Back"
  end

  test "destroying a Testimonial" do
    visit admin_testimonials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testimonial was successfully destroyed"
  end
end
