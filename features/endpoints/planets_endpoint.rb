class PlanetsEndpoint
  include HTTParty

  def initialize
    $endpoint = "#{$api_url}/planets/"
  end

  def listPlanets(query)
    self.class.get($endpoint, :query => query)
  end

  def getPlanet(planetId)
    self.class.get("#{$endpoint}#{planetId}")
  end
end
