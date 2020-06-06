require "json"

class PokemonTranslator
  def self.exec(name)
    file = File.open("pokemon.json")
    json = JSON.parser.new(file.read)
    array = json.parse
    array = array.find { |hash| hash["name"]["japanese"] == name }
    array["name"]["english"]
  end
end
