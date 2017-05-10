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

it "compares letter to word and returns word state after guess" do
  game.word = ["t","e","s","t"]
  game.secret_word = ["-","-","-","-"]
  expect(game.guess_word("t")).to eq ["t","-","-","t"]
  expect(game.guess_word("e")).to eq ["t","e","-","t"]
end

#it "saves guessed letters and increments counter for unique guesses" do
#  game.guessed_letters = ["t","e"]
#  game.guess_counter = 1
#  expect(game.save_guessed_letter("t")).to eq ["t","e"]
#  expect(game.guess_counter).to eq 1
#end
#getting a +:put-outcome error

it "puts outcome of guessed letter" do
  game.word = ["t","e","s","t"]
  game.secret_word = ["t","e","s","t"]
  #game.guess_counter = 3
  expect(game.put_outcome("t")).to eq "Congrats, you won! The word was test!"
end
#getting an unrecognized method error for put_outcome

end #describe end
  