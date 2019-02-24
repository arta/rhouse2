class TestimonialsController < ApplicationController
  # GET /testimonials
  def index
    @testimonials = Testimonial.all
  end
end
