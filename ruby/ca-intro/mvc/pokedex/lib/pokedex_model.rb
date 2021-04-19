require 'faraday'

class PokedexModel
  def extract_pokemon
    response = Faraday.get 'https://pokeapi.co/api/v2/pokemon/ditto'
    JSON.parse(response.body)
  end
end