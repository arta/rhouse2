class Admin::AttachmentsController < ApplicationController
  # DELETE /admin/attachments/1
  def destroy
    image = ActiveStorage::Attachment.find(params[:id])
    portfolio = image.record
    image.purge
    redirect_to portfolio
  end
end
