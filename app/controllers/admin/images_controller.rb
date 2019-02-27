class Admin::ImagesController < ApplicationController
  before_action :authenticate_user!

  # DELETE /admin/images/1
  def destroy
    image = Image.find(params[:id])
    portfolio = image.portfolio
    image.destroy
    redirect_to admin_portfolio_path(portfolio)
  end
end
