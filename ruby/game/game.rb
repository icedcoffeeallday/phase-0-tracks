### Note: I ran out of time on this challenge. I got very stuck, and could
# not get it together to complete this code in a way that 1. works, 2. meets expectations,
# and 3. is in line with the output of the challenge. I am submitting the assignment now
# in order to complete the week, and will do my best to complete it and resubmit it tomorrow, May 9.
# :( :( :( :(


class Game

#access variables
    attr_accessor :word, :game_active, :guessed_letters, :guess_counter, :secret_word





#methods

def initialize
  @word = []
  @guess_counter = 0
  @game_active = true
  @secret_word = []
  @guessed_letters = []

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
        if @word.join == @secret_word.join
        @game_active = false 
        else
        @secret_word
        end 
    end
      @secret_word
    end
end 

def save_guessed_letter(letter)
  if !@guessed_letters.include? letter
    @guess_counter += 1
    @guessed_letters << letter
  #  p guessed_letters
  #save guessed letter and increment if letter has not been guessed before
end

def put_outcome(letter)
 
    if @word.join == @secret_word.join
      puts "Congrats, you won! The word was #{@secret_word.join}!"
    elsif @guess_counter == word.length
      puts "You ran out of turns!"
    elsif !@word.include? (letter)
     puts "Sorry, no match. Here's the word as it stands now: #{@secret_word.join}." 
    elsif @secret_word.include? ("-")
     puts "Here's your updated word! #{@secret_word.join}"
  end
#  p guess_counter
end



end #class end





#driver code

game = Game.new

#@word = ["t","e","s","t"]
#game.create_word_reference("test")
#game.word.length
#p game.create_secret_word

#p game.guess_word("t")
#  p game.word
#  p game.secret_word
#p game.guess_word("f")
#p game.guess_word("e")
#puts "s here"
#p game.guess_word("s")
  # p game.word
 # p game.secret_word
#puts "final t here"
#p game.guess_word("t")
#  p game.word
#  p game.secret_word



puts "Player 1, enter a word for Player 2 to guess."
user_word = gets.chomp

game.create_word_reference(user_word)
#debug p game.word
game.create_secret_word
while (game.game_active == true && game.guess_counter < game.word.length)
  puts "Player 2, guess a letter!"
  letter = gets.chomp
  game.save_guessed_letter(letter)
  game.guess_word(letter)
  game.put_outcome(letter)
  game.guess_counter
  end
end



#UI
#user enters word
#guess validate: move collecting guessed letters to driver code, should just be an array that conditionally increments