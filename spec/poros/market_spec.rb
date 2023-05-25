require 'rails_helper'

RSpec.describe Market do
  describe 'initialize' do
    it 'exists and has attributes' do
      data = {
        id: 1,
        attributes: {
          name: "Marks Market",
          street: "123 Main St",
          city: "Colorado Springs",
          state: "Colorado",
          zip: "80918"
        }
      }

      market = Market.new(data)

      expect(market).to be_a(Market)
      expect(market.id).to eq(1)
      expect(market.name).to eq("Marks Market")
      expect(market.street).to eq("123 Main St")
      expect(market.city).to eq("Colorado Springs")
      expect(market.state).to eq("Colorado")
      expect(market.zip).to eq("80918")
    end
  end
end