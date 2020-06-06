RSpec.describe PokemonTranslator do
  subject { described_class }

  it "translate japanese pokemon name" do
    expect(subject.exec("カイリキー")).to eq("machamp".capitalize)
    expect(subject.exec("フシギダネ")).to eq("bulbasaur".capitalize)
    expect(subject.exec("unknown")).to eq("Not Found")
  end
end
