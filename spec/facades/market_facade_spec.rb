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
      market = @market_facade.single_market(322458)
      
      expect(market).to be_a(Market)
    end
  end

  describe 'get_vendors' do
    it 'returns an array of vendors associate with the market' do
      expect(@market_facade.get_vendors(322458)).to be_a(Array)
      expect(@market_facade.get_vendors(322458)).to all(be_a(Vendor))
    end
  end

  describe 'single_vendor' do
    it 'returns a single vendor' do
      expect(@market_facade.single_vendor(55823)).to be_a(Vendor)
    end
  end
end