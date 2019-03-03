class Admin::PortfoliosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_admin_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /admin/portfolios
  def index
    @admin_portfolios = Admin::Portfolio.all
  end

  # GET /admin/portfolios/1
  def show
  end

  # GET /admin/portfolios/new
  def new
    @admin_portfolio = Admin::Portfolio.new
  end

  # GET /admin/portfolios/1/edit
  def edit
  end

  # POST /admin/portfolios
  def create
    @admin_portfolio = Admin::Portfolio.new(admin_portfolio_params)

    if @admin_portfolio.save
      redirect_to @admin_portfolio, notice: 'Portfolio was created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/portfolios/1
  def update
    if @admin_portfolio.update(admin_portfolio_params)
      redirect_to @admin_portfolio, notice: 'Portfolio was updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/portfolios/1
  def destroy
    @admin_portfolio.destroy
    redirect_to admin_portfolios_url, notice: 'Portfolio was destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_portfolio
      @admin_portfolio = Admin::Portfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet,
    # only allow the white list through.
    def admin_portfolio_params
      params.require(:admin_portfolio).permit(:service, :description,
        :job_started_at, :job_completed_at,
        images_attributes: [:id, :file, :show_order, :caption_heading,
          :caption_text, :comment])
    end
end
