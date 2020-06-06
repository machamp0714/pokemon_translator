RSpec.describe PokemonTranslator do
  subject { described_class }

  it "translate japanese pokemon name" do
    expect(subject.exec("カイリキー")).to eq("machamp".capitalize)
  end
end
