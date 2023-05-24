class MarketFacade
  def get_markets
    results = service.get_markets

    results[:data].map do |result|
      Market.new(result)
    end
  end

  def service
    @service ||= MarketService.new
  end
end