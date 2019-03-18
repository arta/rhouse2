require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should GET new" do
    get new_inquiry_url

    assert_response :success

    assert_select 'form' do
      assert_select 'input[type=text]'
      assert_select 'input[type=email]'
      assert_select 'textarea'
      assert_select 'input[type=submit]'
    end
  end

  test "should POST create" do
    post inquiries_url, params: {
      inquiry: {
        name: 'visitor',
        email: 'visitor@example.org',
        body: 'Lorem ipsum'
      }
    }

    assert_redirected_to new_inquiry_url

    follow_redirect!

    assert_match /Inquiry received, thanks!/, response.body
  end
end