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
 # remove one element from the dispenser

#define add_pez method
 # push flavor onto dispenser

#define see_all_flavors
 #show length of dispenser
 	#MISTAKE ABOVE return flavors
#define pez_count
	#return pez_count

# 3. Initial Solution
=begin
class PezDispenser
 
 attr_reader :flavors
def initialize(flavors)
@flavors = flavors
@pez_count = @flavors.length
end

def get_pez
@pez_count -= 1
end

def add_pez(type)
@flavors.unshift(type)
end

def see_all_pez
@flavors.length
end

def pez_count
@pez_count
end
 
end
 
=end

# 4. Refactored Solution
# Used shift instead of -= for more accuracy.
#removed pez count.. wasn't actually working that way


class PezDispenser
 
 attr_reader :flavors
def initialize(flavors)
@flavors = flavors
end

def get_pez
@flavors.shift
end

def add_pez(type)
@flavors.unshift(type)
end

def see_all_pez
@flavors
end

def pez_count
@flavors.length
end
 
end





# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Uh oh." unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
assert {super_mario.pez_count == 9} 
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!" #== "A new pez dispenser has been created. You have 9 pez!"
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
assert {super_mario.see_all_pez.all? {|pez| flavors.include?(pez)}}
#assert {super_mario.see_all_pez == %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry)}
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
assert {super_mario.see_all_pez[0] == "purple"}
puts "Now you have #{super_mario.pez_count} pez!"
assert {super_mario.pez_count == 10}
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
assert {super_mario.pez_count == 9}




# 5. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
I at first was using push and -= because I haven't really had to use shift or unshift yet
but then I thought about how pez would come from the top rather than the bottom and fixed it.
I also was having some problems with the assert at first, but fixed it.

What questions did you have while coding? What resources did you find to help you answer them?
Nothing really, I knew about shift, but just didn't consider it at first.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Nothing really.

Did you learn any new skills or tricks?
Just used shift and unshift for the first time.

How confident are you with each of the Learning Competencies?
Confident.

Which parts of the challenge did you enjoy?
This was a cool challenge, I quickly set it up with minor problems along the way.

Which parts of the challenge did you find tedious?
--
	
=end