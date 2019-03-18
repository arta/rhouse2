class ContactsController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    redirect_to new_inquiry_path, notice: 'Inquiry received, thanks!'
  end
end
