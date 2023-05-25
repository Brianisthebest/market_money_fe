require 'rails_helper'

RSpec.describe MarketFacade do
  before(:each) do
    @market_facade = MarketFacade.new
  end
  it 'exists' do

    expect(@market_facade).to be_a(MarketFacade)
  end

  describe 'get_markets' do
    it 'returns an array of markets' do
      expect(@market_facade.get_markets).to be_a(Array)
      expect(@market_facade.get_markets).to all(be_a(Market))
    end
  end

  describe 'single_market' do
    it 'returns a single market' do
      expect(@market_facade.single_market).to be_a(Market)
      expect(@market_facade.single_market.count).to eq(1)
    end
  end
end