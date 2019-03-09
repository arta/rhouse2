class PortfoliosController < ApplicationController
  def index
  end

  def kitchens
  end

  def bathrooms
  end

  def roofing
    @portfolios = Admin::Portfolio.roofing
  end

  def siding
    @portfolios = Admin::Portfolio.siding
  end

  def windows
    @portfolios = Admin::Portfolio.windows
  end

  def decks
    @portfolios = Admin::Portfolio.decks
  end

  def flooring
    @portfolios = Admin::Portfolio.flooring
  end
end
