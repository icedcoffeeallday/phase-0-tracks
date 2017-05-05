class Santa

attr_accessor :age
attr_reader :ethnicity
attr_accessor :gender
attr_accessor :reindeer_ranking


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
    #p @reindeer_ranking
  end

#setter method
#  def gender=(new_gender)
#    @gender = new_gender
#  end

#getter methods
#  def age
#    @age
#  end

#  def ethnicity
#    @ethnicity
#  end

#  def gender
#    @gender
#  end

end

#testing for release 0
  #hoho = Santa.new
  #hoho.speak
  #hoho.eat_milk_and_cookies("oreo")

#testing for release 1-3
  #hoho = Santa.new("test","N/A")
  #hoho.get_mad_at("Prancer")
  #hoho.gender = "female"
  #hoho.celebrate_birthday
  #puts "#{hoho.gender} is gender."
  #puts "#{hoho.age} is age."
  #puts "#{hoho.ethnicity} is ethnicity."

#release 4

example_genders = ["female","male","agender","genderfluid","non-binary","bi-gender","genderqueer","none ya biz", "androgyne", "cis man", "cis woman", "gender questioning", "gender non-conforming", "intersex", "pangender", "trans person", "trans man", "trans woman", "androgynous"]
example_ethnicities = ["asian/pacific-islander", "black", "latinx", "hispanic", "white", "decline to state", "african-american", "mexican-american", "tajik", "native american", "arab", "mestizo", "scottish", "uyghur", "multi-racial", "unicorn", "yazidi"]

50.times do
santas = Santa.new(example_genders.sample, example_ethnicities.sample)
santas.age = rand(140)
#p santas.gender
#p santas.ethnicity
#p santas.age
puts "This santa is #{santas.ethnicity}, #{santas.gender} and #{santas.age} years old."
end





