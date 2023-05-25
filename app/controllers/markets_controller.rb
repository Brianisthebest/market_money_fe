class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new.get_markets
  end

  def show
    @market_facade = MarketFacade.new.single_market(params[:id])
    @vendors_facade = MarketFacade.new.get_vendors(params[:id])
  end
end