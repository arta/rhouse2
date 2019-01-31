module PortfoliosHelper
  def current_portfolio?
    controller_name == 'portfolios' && action_name.in?(portfolios_actions)
  end

  def portfolios_actions
    %w(index flooring windows siding roofing decks)
  end
end
