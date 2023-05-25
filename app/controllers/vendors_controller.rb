class VendorsController < ApplicationController
  def show
    @vendor = MarketFacade.new.single_vendor(params[:id])
  end
end