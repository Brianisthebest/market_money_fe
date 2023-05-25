require 'rails_helper'

RSpec.describe 'Market Show Page', type: :feature do
  before(:each) do
    @market = MarketFacade.new.single_market(322458)
    @vendors = MarketFacade.new.get_vendors(322458)

    visit market_path(@market.id)
  end

  describe 'As a visitor' do
    it 'I see the markets name a readable address' do
      expect(page).to have_content(@market.name)
      
      within("#market-address") do
        expect(page).to have_content("1400 U Street NW")
        expect(page).to have_content(@market.city)
        expect(page).to have_content(@market.state)
        expect(page).to have_content(@market.zip)
      end
    end

    it 'I see a list of all the vendors that are at that market'
    it 'Each vendor name is a link to that vendors show page'
  end
end