# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a number
# Output: amount of sides inputed and the random roll of the die
# Steps:
# add attr_accessor so all of the code can access sides
# In initialize set the instance variable to sides for readability
# create if statement that asks if the sides is less than one
  #return arugment error
#In method sides call instance variable sides
# in roll return 1 plus random with a parameter of the sides



# 3. Initial Solution

class Die
  attr_accessor :sides
  def initialize(sides)
    #@sides = sides
     unless @sides > 1
        raise ArgumentError, "Sides cannot be less than one"
      end
  end
  
  def sides
    @sides
  end
  
  def roll
    return 1 + rand(@sides)
  end
end



# 4. Refactored Solution
#I changed the argument error to .new. just because I want to remember that 
# that is the other way to do it, as well as reading it you would read
#"Okay, a new argument error occurred"
#put @sides back to equalling sides because it wouldn't work in a one line loop
#I also removed return in roll
# I made the unless statement into one line
class Die
  attr_accessor :sides
  def initialize(sides)
    @sides = sides
        raise ArgumentError.new("Sides cannot be less than one") unless sides > 1
  end
  
  def sides
    @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(6)
puts die.sides == 6
puts (1..6).include?(die.roll)





# 5. Reflection 