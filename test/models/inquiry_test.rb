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

  test 'name, email and body are required by law' do
    inquiry = Inquiry.new

    refute inquiry.valid?, 'Blank Inquiry should be invalid'

    assert_match /blank/, inquiry.errors[:name].to_s
    assert_match /blank/, inquiry.errors[:email].to_s
    assert_match /blank/, inquiry.errors[:body].to_s
  end
end
