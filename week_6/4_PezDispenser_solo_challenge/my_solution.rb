# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# create initialize with parameter of dispenser

#define take_pez method

#define add_pez method

#define see_all_flavors


# 3. Initial Solution

class PezDispenser
 
 attr_reader :flavors
def initialize(flavors)
@flavors = flavors
@pez_count = @flavors.length
end

def get_pez
@pez_count -= 1
@pez_count
end

def add_pez(type)
@flavors.push(type)
end

def see_all_pez
@flavors.length
end

def pez_count
@pez_count
end
 
end
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
What questions did you have while coding? What resources did you find to help you answer them?
What concepts are you having trouble with, or did you just figure something out? If so, what?
Did you learn any new skills or tricks?
How confident are you with each of the Learning Competencies?
Which parts of the challenge did you enjoy?
Which parts of the challenge did you find tedious?
	
=end