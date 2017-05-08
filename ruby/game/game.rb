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
        end
      return @secret_word
end
end

def put_outcome(letter)
    if @word.join == @secret_word.join
      return "Congrats, you won! The word was #{@secret_word.join}!"
      @game_active = false  
    elsif !@word.include? (letter)
     puts "Sorry, no match. Here's the word as it stands now: #{@secret_word.join}." 
     @game_active = true
    elsif @secret_word.include? ("-")
      puts "Here's your updated word! #{@secret_word.join}"
      @game_active = true
  end
end

end #class end


#driver mcguyver

game = Game.new

@word = ["t","e","s","t"]
game.create_word_reference("test")
game.word.length
game.create_secret_word

#p game.guess_word("t")
#p game.guess_word("f")
#p game.guess_word("e")
#p game.guess_word("s")

while game.game_active == true 
  puts "Guess a letter!"
  letter = gets.chomp
  game.guess_word(letter)
  game.put_outcome(letter)
end



#UI
#user enters word
#chances = word.length * 2
#guess validate: move collecting guessed letters to driver code, should just be an array that conditionally increments
