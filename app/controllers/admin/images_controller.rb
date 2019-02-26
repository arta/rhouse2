class Admin::ImagesController < ApplicationController

  # DELETE /admin/images/1
  def destroy
    image = Image.find(params[:id])
    portfolio = image.portfolio
    image.destroy
    redirect_to admin_portfolio_path(portfolio)
  end
end
