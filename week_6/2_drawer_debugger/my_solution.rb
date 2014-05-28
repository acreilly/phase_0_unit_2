# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?
	def initialize(contents = [], open = true)
		@contents = contents
		@open = open
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents.push(item)
	end

	def remove_item(item = @contents.pop) #removing last element in the array
		@contents.delete(item)
	end

	def dump  # the statement below
		@contents = []
	end

	def view_contents
		if @contents.empty? == true
			puts "The drawer is empty."
		else
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
	end
end


class Silverware
	attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "The #{type} is now clean."
		@clean = true
	end

end




def assert
	raise "Issue with drawer!" unless yield
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
puts removed_knife.clean_silverware

silverware_drawer.view_contents
silverware_drawer.dump
puts silverware_drawer.view_contents

fork = Silverware.new("fork")
puts fork.eat
puts fork.clean_silverware
puts silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...

#BONUS SECTION


# DRIVER TESTS GO BELOW THIS LINE





# 5. Reflection 
=begin

What parts of your strategy worked? What problems did you face?
Everything worked well. Only problem was with the last fork remove item because the item was
not in the drawer so an error would occur. I had to add a silverware.new for fork for the tests to work.

What questions did you have while coding? What resources did you find to help you answer them?
The fork problem, but someone on the june rockets forum had asked the same question I was thinking
so that helped.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Nothing, this challenge made sense to me.

Did you learn any new skills or tricks?
I don't think so.

How confident are you with each of the Learning Competencies?
Confident.

Which parts of the challenge did you enjoy?
I enjoyed this challenge because I was able to complete it without help or trouble. I felt confident with the challege.

Which parts of the challenge did you find tedious?
None.

=end