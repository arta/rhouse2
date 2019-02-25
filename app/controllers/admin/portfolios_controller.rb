class Admin::PortfoliosController < ApplicationController
  before_action :set_admin_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /admin/portfolios
  # GET /admin/portfolios.json
  def index
    @admin_portfolios = Admin::Portfolio.all
  end

  # GET /admin/portfolios/1
  # GET /admin/portfolios/1.json
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
  # POST /admin/portfolios.json
  def create
    @admin_portfolio = Admin::Portfolio.new(admin_portfolio_params)

    respond_to do |format|
      if @admin_portfolio.save
        format.html { redirect_to @admin_portfolio, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @admin_portfolio }
      else
        format.html { render :new }
        format.json { render json: @admin_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/portfolios/1
  # PATCH/PUT /admin/portfolios/1.json
  def update
    respond_to do |format|
      if @admin_portfolio.update(admin_portfolio_params)
        format.html { redirect_to @admin_portfolio, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_portfolio }
      else
        format.html { render :edit }
        format.json { render json: @admin_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/portfolios/1
  # DELETE /admin/portfolios/1.json
  def destroy
    @admin_portfolio.destroy
    respond_to do |format|
      format.html { redirect_to admin_portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_portfolio
      @admin_portfolio = Admin::Portfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_portfolio_params
      params.require(:admin_portfolio).permit(:service, :description, :job_started_at, :job_completed_at)
    end
end
