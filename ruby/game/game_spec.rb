require_relative 'game'

describe Game do
  let (:game) {Game.new}

it "splits word into array" do
  expect(game.create_word_reference("test")).to eq ["t","e","s","t"]
end

it "creates hashed word for guessing" do
  game.word = ["t","e","s","t"]
  expect(game.create_secret_word).to eq ["-","-","-","-"]
end

end
  