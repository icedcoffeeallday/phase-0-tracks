require_relative 'game'

describe Game do
  let (:game) {Game.new}

it "splits word into array" do
  expect(game.create_word_reference("test")).to eq ["t","e","s","t"]
end

end
  