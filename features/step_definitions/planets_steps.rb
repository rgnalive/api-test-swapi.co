Dado("o endpoint da API para buscar planetas") do
  @planets_endpoint = PlanetsEndpoint.new
end

Dado("eu listar todos os planetas") do
  $response = @planets_endpoint.listPlanets("")
end

Dado("eu armazenar o count de registros da resposta") do
  $count = $response["count"]
end

Quando("eu buscar um planeta, passando um id aleatório e maior do que o count armazenado") do
  $response = @planets_endpoint.getPlanet(rand(($count + 1)..($count * 2)))
end

Então("recebo a mensagem {string}") do |string|
  expect($response["detail"]).to eq(string)
end
