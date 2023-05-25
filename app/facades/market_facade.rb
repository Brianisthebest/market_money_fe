class MarketFacade
  def get_markets
    results = service.get_markets

    results[:data].map do |result|
      Market.new(result)
    end
  end

  def single_market(id)
    result = service.single_market(id)

    Market.new(result[:data])
  end

  def get_vendors(id)
    results = service.get_vendors(id)
    
    results[:data].map do |result|
      Vendor.new(result)
    end
  end

  def service
    @service ||= MarketService.new
  end
end