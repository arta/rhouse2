class Admin::TestimonialsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_admin_testimonial, only: [:show, :edit, :update, :destroy]

  # GET /admin/testimonials
  def index
    @admin_testimonials = Admin::Testimonial.all
  end

  # GET /admin/testimonials/1
  def show
  end

  # GET /admin/testimonials/new
  def new
    @admin_testimonial = Admin::Testimonial.new
  end

  # GET /admin/testimonials/1/edit
  def edit
  end

  # POST /admin/testimonials
  def create
    @admin_testimonial = Admin::Testimonial.new(admin_testimonial_params)

    if @admin_testimonial.save
      redirect_to @admin_testimonial, notice: 'Testimonial was created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/testimonials/1
  def update
    if @admin_testimonial.update(admin_testimonial_params)
      redirect_to @admin_testimonial, notice: 'Testimonial was updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/testimonials/1
  def destroy
    @admin_testimonial.destroy
    redirect_to admin_testimonials_url, notice: 'Testimonial was destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_testimonial
      @admin_testimonial = Admin::Testimonial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_testimonial_params
      params.require(:admin_testimonial).permit(:body, :client_signature,
        :job_started_at, :job_completed_at)
      # or params.fetch(:admin_testimonial, {}). ...
    end
end