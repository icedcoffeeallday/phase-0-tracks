class Game

#access variables
    attr_accessor :word
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

def create_secret_word
 @word.length.times do
    @secret_word.push("-")
  end
  return @secret_word
end



def guess_word(letter)

    if @word.include? (letter)
        @word.each_index.select {|i| @word[i] == letter}.each do |value|
        @secret_word[value].replace (letter) 
        puts @secret_word.join
      end
    elsif !@word.include? (letter)
        puts @secret_word.join
      end
      return @secret_word
    end




end #class end

#driver mcguyver

#game = Game.new

@word = ["t","e","s","t"]
p game.create_word_reference("test")
p game.word.length
p game.create_secret_word
p game.guess_word("f")
p game.guess_word("t")
p game.guess_word("e")
p game.guess_word("s")



#UI
#user enters word
#chances = word.length * 2
#guess validate: move collecting guessed letters to driver code, should just be an array that conditionally increments
