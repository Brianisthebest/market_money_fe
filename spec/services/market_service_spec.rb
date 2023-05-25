require 'rails_helper'

RSpec.describe MarketService do
  before(:each) do
    @market_service = MarketService.new
  end
  describe 'get_markets' do
    it 'returns an array of markets' do
      expect(@market_service.get_markets).to be_a(Hash)
    end
  end

  describe 'single_market' do
    it 'returns a single market' do
      expect(@market_service.single_market(1)).to be_a(Hash)
    end
  end
end