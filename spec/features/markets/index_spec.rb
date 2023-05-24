require 'rails_helper'

RSpec.describe 'Market index page', type: :feature do
  describe 'As a visitor' do
    it 'I see all marked listed with their name, city, and state' do
      markets = MarketFacade.get_markets

      visit '/markets'

      expect(page).to have_content("Markets")
      expect(page).to have_content("Name")
      expect(page).to have_content("City")
      expect(page).to have_content("State")

      markets.each do |market|
        expect(page).to have_content(market.name)
        expect(page).to have_content(market.city)
        expect(page).to have_content(market.state)
      end
    end

    it 'has a button to see more info on that market that takes me to /markets/:id'
  end
end


# When I visit '/markets'
# I see all markets listed with their name, city and state
# When I click a button to see more info on that market
# I'm taken to that market's show page '/markets/:id'