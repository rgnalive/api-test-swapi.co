class FilmsEndpoint
  include HTTParty

  def initialize
    $endpoint = "#{$api_url}/films/"
  end

  def getFilms(query)
    self.class.get($endpoint, :query => query)
  end
end
