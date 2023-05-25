class Vendor
  attr_reader :id, 
              :name, 
              :contact_phone, 
              :credit_accepted, 
              :description, 
              :contact_name

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @contact_phone = data[:attributes][:contact_phone]
    @contact_name = data[:attributes][:contact_name]
    @credit_accepted = data[:attributes][:credit_accepted]
    @description = data[:attributes][:description]
  end
end