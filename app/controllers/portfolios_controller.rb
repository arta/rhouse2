class PortfoliosController < ApplicationController
  def index
  end

  def kitchens
  end

  def bathrooms
  end

  def roofing
    @roofing_portfolios = Admin::Portfolio.roofing
  end

  def siding
    @siding_portfolios = Admin::Portfolio.siding
  end

  def windows
    @windows_portfolios = Admin::Portfolio.windows
  end

  def decks
    @decks_portfolios = Admin::Portfolio.decks
  end

  def flooring
    @flooring_portfolios = Admin::Portfolio.flooring
  end
end
