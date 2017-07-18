describe "#score" do
  it "returns 0 for blank words" do
    expect(@game.score("")).to eq 0
  end

  it "returns 0 for nil" do
    expect(@game.score(nil)).to eq 0
  end

  it "returns 14 for cabbage" do
    expect(@game.score("cabbage")).to eq 14
  end

  it "returns 8 for hello" do
    expect(@game.score("hello")).to eq 8
  end
end
