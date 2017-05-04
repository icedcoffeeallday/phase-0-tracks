class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def celebrate_birthday
    @age = @age + 1
    @age
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete (reindeer_name)
    @reindeer_ranking.insert(-1,reindeer_name)
    p @reindeer_ranking
  end

#setter method
  def gender=(new_gender)
    @gender = new_gender
  end


end

#hoho = Santa.new
#hoho.speak
#hoho.eat_milk_and_cookies("oreo")

hoho = Santa.new("test","N/A")
hoho.get_mad_at("Vixen")
hoho.get_mad_at("Prancer")