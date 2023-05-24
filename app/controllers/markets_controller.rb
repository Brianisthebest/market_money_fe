class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new.get_markets
  end
end