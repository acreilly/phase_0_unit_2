# U2.W5: Virus Predictor

# I worked on this challenge [by myself]

#state_data is two hashes
# the hash of the state with hash rocket to the information
#within the information hash is another hash that uses the new symbol syntax rather than
# the :before or the => hash rocket.

# EXPLANATION OF require_relative
#allows this file to access information from state_data (like href for css)
=begin ORIGINAL CODE
require_relative 'state_data' 
class VirusPredictor

  # takes all the parameters and setting them to instance variables so other methods can have access
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # returns the strings the methods below created with the information taken from state_data
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end


# v PRIVATE -methods within private cannot be called outside of the class
#This is why virus_effects is above because it allows us to retrieve
#the information only in the way the coder wanted.
#if we put private above virus_effects we would not be able to retreive any information
  private  #what is this?  what happens if it were cut and pasted above the virus_effects method

#Checks size of polulation density
# sets number_of_deaths variable to the size of the population
# times the number that goes with that density then rounds it down
#Then prints out the string with the state and number of deaths that will occur due to the outbreak
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#creates variable speed and sets it to 0.0 
#Checks the population density and sets speed to the given speed for that density size
#returns string stating how many months it will take to spread across state
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end
=end
require_relative 'state_data' 
class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

   def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  

  def predicted_deaths(population_density, population, state)
    case @population_density 
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when 101..150
      number_of_deaths = (@population * 0.3).floor
    when 51..100
      number_of_deaths = (@population * 0.2).floor
    when @population_density <= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) 
    speed = 0.0
    case @population_density
    when @population_density >= 200
      speed += 0.5
    when 101..150
      speed += 1
    when 51..100
      speed += 1.5
    when @population_density<= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end
STATE_DATA.each do |state, info|
  VirusPredictor.new(state, info[:population_density], info[:population], info[:region], info[:regional_spread]).virus_effects
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
=begin

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects
=end


=begin
# 5. Reflection 
What parts of your strategy worked? What problems did you face?
I refactored using a case, but I couldn't do 0..50 for some reason
  but it wouldn't work properly so I had to keep the first when and last as is

What questions did you have while coding? What resources did you find to help you answer them?
none

What concepts are you having trouble with, or did you just figure something out? If so, what?
no

Did you learn any new skills or tricks?
no..

How confident are you with each of the Learning Competencies?
Confident

Which parts of the challenge did you enjoy?
This was a cool challenge just because the code was very interesting
Which parts of the challenge did you find tedious?
nope
=end