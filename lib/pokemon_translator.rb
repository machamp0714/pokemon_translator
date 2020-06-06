require "json"

class PokemonTranslator
  def self.exec(name)
    file = File.open("pokemon.json", "r")
    json = JSON.parser.new(file.read)
    file.close
    array = json.parse
    array = array.find { |hash| hash["name"]["japanese"] == name }

    begin
      array["name"]["english"]
    rescue NoMethodError
      "Not Found"
    end
  end
end
