require 'test_helper'

class Admin::TestimonialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_testimonial = admin_testimonials(:one)
  end

  test "should get index" do
    get admin_testimonials_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_testimonial_url
    assert_response :success
  end

  test "should create admin_testimonial" do
    assert_difference('Admin::Testimonial.count') do
      post admin_testimonials_url, params: { admin_testimonial: { body: @admin_testimonial.body, client_signature: @admin_testimonial.client_signature, job_completed_at: @admin_testimonial.job_completed_at, job_started_at: @admin_testimonial.job_started_at } }
    end

    assert_redirected_to admin_testimonial_url(Admin::Testimonial.last)
  end

  test "should show admin_testimonial" do
    get admin_testimonial_url(@admin_testimonial)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_testimonial_url(@admin_testimonial)
    assert_response :success
  end

  test "should update admin_testimonial" do
    patch admin_testimonial_url(@admin_testimonial), params: { admin_testimonial: { body: @admin_testimonial.body, client_signature: @admin_testimonial.client_signature, job_completed_at: @admin_testimonial.job_completed_at, job_started_at: @admin_testimonial.job_started_at } }
    assert_redirected_to admin_testimonial_url(@admin_testimonial)
  end

  test "should destroy admin_testimonial" do
    assert_difference('Admin::Testimonial.count', -1) do
      delete admin_testimonial_url(@admin_testimonial)
    end

    assert_redirected_to admin_testimonials_url
  end
end
