class Vendor
  attr_reader :id, :name, :contact_phone, :credit_accepted, :description

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @contact_phone = data[:attributes][:contact_phone]
    @credit_accepted = data[:attributes][:credit_accepted]
    @description = data[:attributes][:description]
  end
end