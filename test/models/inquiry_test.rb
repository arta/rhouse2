require 'test_helper'

class InquiryTest < ActiveSupport::TestCase
  test 'responds to name, email and body' do
    inquiry = Inquiry.new

    assert inquiry.respond_to?(:name),  'does not respond to :name'
    assert inquiry.respond_to?(:email), 'does not respond to :email'
    assert inquiry.respond_to?(:body),  'does not respond to :body'
  end

  test 'should be valid when all attributes are set' do
    attrs = {
      name: 'visitor',
      email: 'visitor@example.org',
      body: 'Lorem ipsum'
    }

    inquiry = Inquiry.new attrs
    assert inquiry.valid?, 'should be valid'
  end
end
