require 'rails_helper'

RSpec.describe Vendor do
  describe 'initialize' do
    it 'exists and has attributes' do
      data = {
        id: 1,
        attributes: {
          name: "Vendor 1",
          contact_phone: "719-867-5309",
          credit_accepted: false,
          description: "We sell things",
          contact_name: "Mark"
        }
      }

      vendor = Vendor.new(data)

      expect(vendor).to be_a(Vendor)
      expect(vendor.id).to eq(1)
      expect(vendor.name).to eq("Vendor 1")
      expect(vendor.contact_phone).to eq("719-867-5309")
      expect(vendor.credit_accepted).to eq(false)
      expect(vendor.description).to eq("We sell things")
      expect(vendor.contact_name).to eq("Mark")
    end
  end
end