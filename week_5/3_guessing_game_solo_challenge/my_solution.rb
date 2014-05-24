# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: integer
# Output: if the guess is higher lower or correct
# Steps:
# attr_accessor added
# have instance variable answer equal answer
# create instance variable correct and set false for default

#Define guess method with parameter of integer
	#if integer is less than answer
		#return low & return correct as false
	#if integer is higher than answer
		#return high and return correct as false
	# else return correct and return correct as true

#define solved
	#return @correct



# 3. Initial Solution

=begin
class GuessingGame
	attr_accessor :answer
  def initialize(answer)
  	@answer = answer
  	@correct = false
  	end

  def guess(int)
  	if int > @answer
  		@correct = false
  		return :high
  	elsif int < @answer
  		@correct = false
  		return :low
  	else
  		@correct = true
  		return :correct
  end
end
  
  def solved?
  	@correct
  end

end


=end


# 4. Refactored Solution
#I realized you dont need attr accessor
# changed parameter name to guess

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@correct = false
  	end

  def guess(guess)
  	if guess > @answer
  		@correct = false
  		return :high
  	elsif guess < @answer
  		@correct = false
  		return :low
  	else
  		@correct = true
  		return :correct
  end
end
  
  def solved?
  	@correct
  end

end





# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

p game.solved? == false
p game.guess(5) == :low
p game.guess(20) == :high
p game.solved? == false

p game.guess(10) == :correct
p game.solved? == true



=begin
# 5. Reflection 
What parts of your strategy worked? What problems did you face?
I felt like this challenge was pretty simple.
No problems arose.

What questions did you have while coding? What resources did you find to help you answer them?
none
What concepts are you having trouble with, or did you just figure something out? If so, what?
none
Did you learn any new skills or tricks?
none
How confident are you with each of the Learning Competencies?
Confident
Which parts of the challenge did you enjoy?
..
Which parts of the challenge did you find tedious?
..
=end
