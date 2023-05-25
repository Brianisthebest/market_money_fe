require 'rails_helper'

RSpec.describe 'Market index page', type: :feature do
  before(:each) do
    @markets = MarketFacade.new.get_markets
  
    visit '/markets'
  end

  describe 'As a visitor' do
    it 'I see all marked listed with their name, city, state, and a link to their own show page' do

      expect(page).to have_content("Markets")
      expect(page).to have_content("Name")
      expect(page).to have_content("City")
      expect(page).to have_content("State")

      within("#market-#{@markets.first.id}") do
        expect(page).to have_content(@markets.first.name)
        expect(page).to have_content(@markets.first.city)
        expect(page).to have_content(@markets.first.state)
        expect(page).to have_button("More Info")

        click_button("More Info")

        expect(current_path).to eq(market_path(@markets.first.id))
      end

      visit '/markets'

      within("#market-#{@markets.last.id}") do
        expect(page).to have_content(@markets.last.name)
        expect(page).to have_content(@markets.last.city)
        expect(page).to have_content(@markets.last.state)
        expect(page).to have_button("More Info")

        click_button("More Info")

        expect(current_path).to eq(market_path(@markets.first.id))
      end
    end
  end
end


# When I visit '/markets'
# I see all markets listed with their name, city and state
# When I click a button to see more info on that market
# I'm taken to that market's show page '/markets/:id'