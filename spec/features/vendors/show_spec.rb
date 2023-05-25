require 'rails_helper'

RSpec.describe 'Vendor Show Page' do
  describe 'As a visitor' do
    it 'I see the vendors name, contact information, whether they accept credit, and a description of what they sell' do
      vendor = MarketFacade.new.single_vendor(55823)

      visit vendor_path(vendor.id)

      expect(page).to have_content("Contact Info:")
      expect(page).to have_content("name: #{vendor.contact_name}")
      expect(page).to have_content("phone: #{vendor.contact_phone}")
      expect(page).to have_content("Credit Accepted?: #{vendor.credit_accepted.humanize}")
      expect(page).to have_content("Description: #{vendor.description}")
    end
  end
end

# As a visitor
# When I visit a vendor's show page 'vendors/:id'
# I see that vendor's name, contact information, whether they accept credit, and a description of what they sell