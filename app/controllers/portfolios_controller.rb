class PortfoliosController < ApplicationController
  def index
  end

  def kitchens
  end

  def bathrooms
  end

  def roofing
    @portfolios = Portfolio.roofing
  end

  def siding
    @portfolios = Portfolio.siding
  end

  def windows
    @portfolios = Portfolio.windows
  end

  def decks
    @portfolios = Portfolio.decks
  end

  def flooring
    @portfolios = Portfolio.flooring
  end
end
