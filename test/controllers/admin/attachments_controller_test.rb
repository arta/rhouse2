require 'test_helper'

class Admin::AttachmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get admin_attachments_destroy_url
    assert_response :success
  end

end