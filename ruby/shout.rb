module Shout

  #def self.yell_angrily(words)
  #  words + "!!!" + " :("
  #end

  #def self.yell_happily(words)
  #  "Yayyyyyy! " + words + "! :D :D :D"
  #end

  def whoop(number)
    number.times do 
      puts "Whoop!"
    end
  end

  def yeah(number)
    number.times do
      puts "YEAHHHHH!!!!!"
    end
  end

  def new_wave
    puts "Shout / Shout / Let it all out / These are the things I can do without / Come on / I'm talking to you / Come on"
  end

end


#yell happily/angrily driver code

  #p Shout.yell_angrily("Up yours, pre-existing conditions")
  #p Shout.yell_happily("They all got impeached!??!")

class Party_people
  include Shout
end

class Sports_fans
  include Shout
end

class Goth_kids
  include Shout
end

party_peeps = Party_people.new
party_peeps.whoop(3)
party_peeps.yeah(10)

sportsball_fans = Sports_fans.new
sportsball_fans.whoop(5)
sportsball_fans.yeah(2)

kids = Goth_kids.new
kids.new_wave




