# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Array of letters
# Output: one of those letters randomly chosen
# Steps:
#add attr_accessor for labels
#if labels array is empty
  #raise argument error

# in sides method return the labels length
# in roll method randomize labels length
#return labels with randomize in index

# 3. Initial Solution

class Die
	attr_accessor :labels
  def initialize(labels)
  	@labels = labels
  if labels.empty? == true
  	raise ArgumentError, "Labels list empty"
  end
end

  def sides
  	@labels.length
  end

  def roll
    randomize = rand(@labels.length)
    @labels[randomize]
	end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides == 6
p ('A'..'F').include?(die.roll) == true


# 5. Reflection 
