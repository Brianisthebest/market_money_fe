require 'rails_helper'

RSpec.describe Market do
  describe 'initialize' do
    it 'exists and has attributes' do
      data = {
        id: 1,
        attributes: {
          name: "Marks Market",
          city: "Colorado Springs",
          state: "Colorado"
        }
      }

      market = Market.new(data)

      expect(market).to be_a(Market)
      expect(market.id).to eq(1)
      expect(market.name).to eq("Marks Market")
      expect(market.city).to eq("Colorado Springs")
      expect(market.state).to eq("Colorado")
    end
  end
end