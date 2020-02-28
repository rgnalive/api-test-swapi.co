Então("recebo o statusCode {int}") do |int|
  expect($response.code).to eq(int)
end
