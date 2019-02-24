class TestimonialsController < ApplicationController
  before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

  # GET /testimonials
  def index
    @testimonials = Testimonial.all
  end

  # GET /testimonials/1
  def show
  end

  # GET /testimonials/new
  def new
    @testimonial = Testimonial.new
  end

  # GET /testimonials/1/edit
  def edit
  end

  # POST /testimonials
  def create
    @testimonial = Testimonial.new(testimonial_params)

    if @testimonial.save
      redirect_to @testimonial, notice: 'Testimonial successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /testimonials/1
  def update
    if @testimonial.update(testimonial_params)
      redirect_to @testimonial, notice: 'Testimonial successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /testimonials/1
  def destroy
    @testimonial.destroy
    redirect_to testimonials_url, notice: 'Testimonial successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testimonial_params
      params.require(:testimonial).permit(:body, :client_signature,
        :job_started_at, :job_completed_at)
    end
end
