class Inquiry
  include ActiveModel::Model
  attr_accessor :name, :email, :body, :cc_inquiry
  validates :name, :email, :body, presence: true

  def cc_inquiry?
    cc_inquiry == '1'
  end
end
