Dado("o endpoint da API para buscar filmes") do
  @films_endpoint = FilmsEndpoint.new
end

Quando("eu listar todos os filmes") do
  $response = @films_endpoint.getFilms("")
end

Então("eu armazeno os títulos") do
  results = Array.new

  for i in 0..$response["results"].length - 1
    results << $response["results"][i]["title"]
  end

  puts "Títulos: #{results}"

  # ou se preferir exibir os títulos separados:
  # for i in results.length - 1
  #   puts results[i]
  # end
end
