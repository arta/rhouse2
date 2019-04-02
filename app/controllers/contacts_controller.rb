class ContactsController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.valid?
      VisitorMailer.inquiry(@inquiry).deliver_now
      redirect_to new_inquiry_path, notice: 'Inquiry received, thanks!'
    else
      render 'new'
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :body, :cc_me)
    end
end
