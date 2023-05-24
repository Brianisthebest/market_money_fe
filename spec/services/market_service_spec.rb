require 'rails_helper'

RSpec.describe MarketService do
  describe 'get_markets' do
    it 'returns an array of markets' do
      expect(MarketService.new.get_markets).to be_a(Array)
    end
  end
end