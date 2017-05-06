class Game

#access variables
    attr_reader :word
    attr_reader :game_active
    attr_accessor :guessed_letters #array of letters guessed
    attr_accessor :counter
    #guess
    #guessed word
    #guess count? only if incremented in different methods



#methods

def initialize(word)
  #user-input word to guess
  @counter = 0
  #set game to in progress
end

#def word_validate(word)
#end

def guess_validate(arr, letter)
  if arr.length = 0
    false
  else arr.include? (letter)   
  end
end

def guess_store_increment(arr, letter)
  arr << letter
  @counter += 1
end

def guess(letter)
#store guessed letter in guessed_letters array
#increment counter if guessed letter is not in guessed letter array
#compare letter to word array, get letter's index in word array
#if letter is in word append to correct index position in word array
#output: word status --> joined guessed word array with _ sted nil
end