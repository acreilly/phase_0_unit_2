# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution
=begin
class Die
	attr_accessor :sides
	def initialize(sides)
  		if sides < 2
  			raise ArgumentError, 'Sides cannot be less than one' 
  		end
  	end

  def sides
  	@sides = sides
  end
  
  def roll
  	return 1 + rand(@sides)
  end

end


=end
# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6)
puts die.sides #== 6
puts die.roll




# 5. Reflection 