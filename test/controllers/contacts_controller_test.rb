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

  # Successful post to inquiries_url should increase the size
  # of the ActionMailer::Base.deliveries array by 1
  # (indicating that an email was sent as a result of the action performed)
  test "should POST create" do
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post inquiries_url, params: {
        inquiry: {
          name: 'visitor',
          email: 'visitor@example.org',
          body: 'Lorem ipsum'
        }
      }
    end

    assert_redirected_to new_inquiry_url

    follow_redirect!

    assert_match /Inquiry received, thanks!/, response.body
  end

  test "should get error messages for invalid POST create" do
    post inquiries_url, params: {
      inquiry: { name: '', email: '', body: '' }
    }

    # Error messages are shown:
    assert_match /Name .* blank/, response.body
    assert_match /Email .* blank/, response.body
    assert_match /Body .* blank/, response.body
  end
end
