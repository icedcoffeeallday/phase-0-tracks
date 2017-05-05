module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "Yayyyyyy! " + words + "! :D :D :D"
  end

end

p Shout.yell_angrily("Up yours, pre-existing conditions")

p Shout.yelling_happily("They all got impeached!??!")