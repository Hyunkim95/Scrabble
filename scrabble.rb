class Scrabble
  def initialize
    @score = 0
  end

  # return the value of the letter
  def check_hash(letter)
    hash = {
        "A" => 1, "B" => 3, "C" => 3, "D" => 2,
        "E" => 1, "F" => 4, "G" => 2, "H" => 4,
        "I" => 1, "J" => 8, "K" => 5, "L" => 1,
        "M" => 3, "N" => 1, "O" => 1, "P" => 3,
        "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
        "U" => 1, "V" => 4, "W" => 4, "X" => 8,
        "Y" => 4, "Z" => 10
      }
    return hash[letter.upcase()]
  end

  # return the score
  def score(word)
    if word == "" || word == nil
      @score = 0
    else
      word.split(//).each{ |letter| @score += check_hash(letter) }
    end
    @score
  end
end

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
