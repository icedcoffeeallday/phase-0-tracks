# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# File pathway to state data database, which is required for the program to have any meaning.
# Require: pass string, queries Ruby Gems library and, if return is true, provides functionality from requested gem.

require_relative 'state_data'


class VirusPredictor

#initialize: initializes new instance of class; sets local variables based on arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#virus_effects: wrapper method that calls methods below, sets variables with local values
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

#predicted_deaths: returns number of deaths based on population density and percent of population. Floor rounds down to nearest whole number.
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    case when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    when
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#speed_of_spread: returns number of months that it will take for virus to spread, based on population density value.
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    when
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#Driver for all 50 states
#input: virus predictor class, plus state data constant
#steps: for each state, calculate the virus effects based on the state's population and population density
#output: each state's virus prediction on its own line of text

STATE_DATA.each do |state_name,population_data|
  state = VirusPredictor.new(state_name,population_data[:population_density],population_data[:population])
  state.virus_effects
end 


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
#The inner hash (population and population density) uses the simple hash syntax, with a symbol as a key. The outer or "hashy hash" uses an implicit hash format, where the key is a string.

# What does require_relative do? How is it different from require?
#Require_relative is a filepathway to a required file (like source code) in the same directory. Require queries the Ruby Gems library and returns true/false; if the requested gem is found, then its functionality is available in the code.

# What are some ways to iterate through a hash?
#.each, .map

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Because the variables are instance variables that are declared when the class is initialized, it was unnecessary to pass them as arguments to the wrapper method, or to the individual methods.

# What concept did you most solidify in this challenge?
# Iterating through and accessing information in hashes.

