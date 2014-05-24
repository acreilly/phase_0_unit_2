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

#I believe my code is simple and easy. I don't
# think it needs to be refactored.




# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides == 6
p ('A'..'F').include?(die.roll) == true



=begin
# 5. Reflection 
What parts of your strategy worked? What problems did you face?
Everything worked well, I did have to research how to go about rolling it
I found that someone used .sample, but I didn't really understnad it
 and wanted to find a different way to solve it,

What questions did you have while coding? What resources did you find to help you answer them?
How to make roll work
What concepts are you having trouble with, or did you just figure something out? If so, what?
nothing really, once I researched sample I understood it.

Did you learn any new skills or tricks?
.sample
How confident are you with each of the Learning Competencies?
Confident

Which parts of the challenge did you enjoy?
solving it

Which parts of the challenge did you find tedious?
none
=end