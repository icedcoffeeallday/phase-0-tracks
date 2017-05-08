class Game

#access variables
    attr_reader :word
    attr_accessor :game_active
    attr_reader :chances
    attr_accessor :guessed_letters #array of letters guessed
    attr_accessor :guess_counter
    attr_accessor :secret_word
    #guess
    #guessed word
    #guess count? only if incremented in different methods



#methods

def initialize
  @word = []
  @guess_counter = 0
  @game_active = true
  @secret_word = []

#input: word entered by first user
#steps:
# - saves word in a way that it can be compared with individual letters later
# - begins the game
# - sets the number of guesses to the length of the word times 2
# - initializes the guess counter
#output: initialized game
end

def create_word_reference(word)
  @word = word.split("")
end

def create_secret_word (word_array)
 word_array = @word
 word_array.length.times do |i|
    @secret_word.push("-")
  end
  @secret_word
end


def guess_word(letter)
@word.include? (letter)
  #input: accepts letter, guess list and word array
  #steps:
  # - Compare word array and guess
  #     - if all match, end game
  #output: print out word-guess status, string showing user -s for letters they haven't yet correctly guessed.
end

end #class end

#driver mcguyver

game = Game.new
@word = ["t","e","s","t"]
p @word.length
p game.create_secret_word(@word)


#UI
#user enters word
#chances = word.length * 2
#guess validate: move collecting guessed letters to driver code, should just be an array that conditionally increments
