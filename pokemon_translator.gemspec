require_relative 'lib/pokemon_translator/version'

Gem::Specification.new do |spec|
  spec.name          = "pokemon_translator"
  spec.version       = PokemonTranslator::VERSION
  spec.authors       = ["machamp0714"]
  spec.email         = ["rateliasudaisuki@gmail.com"]

  spec.summary       = %q{Translate Pokemon Name.}
  spec.description   = %q{Translate Japanese Pokemon Name into English.}
  spec.homepage      = "https://github.com/machamp0714/pokemon_translator"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/machamp0714/pokemon_translator"
  spec.metadata["changelog_uri"] = "https://github.com/machamp0714/pokemon_translator"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
