class PlanetsEndpoint
  include HTTParty

  def initialize
    $endpoint = "#{$api_url}/planets/"
  end

  def getPlanets(query)
    self.class.get($endpoint, :query => query)
  end
end
