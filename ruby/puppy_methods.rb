#class definition

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num = num.to_i
    num.times do
      puts "Woof!"
      end
  end

  def rollover
    puts "Rollover!"
  end

  def dogyears(years)
    years = years.to_i
    dog_age = years * 7
    puts "The puppy is #{dog_age} human years old."
  end

  def highfive(num)
    num.times {
      puts "( ^o^)ノ＼(^_^ )"
    }
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end


end


#Driver code

bandit = Puppy.new

bandit.fetch("squeaky toy")

bandit.speak(1)

bandit.rollover

bandit.dogyears(3)

puts "How many high-fives do you want from the puppy?"
  highfive_num = gets.chomp.to_i

bandit.highfive(highfive_num)