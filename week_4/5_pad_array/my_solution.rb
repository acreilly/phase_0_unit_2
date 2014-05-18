# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? an array with a minimum size
# What is the output? (i.e. What should the code return?)
# an array that is at no smaller than min size
# What are the steps needed to solve the problem?
# Create a class called Array
# Within the array class create pad! method
	# make this method check the length of the array
	# if it is less than minumum length
	#have it push pad value until it is equal to min
	# return the array

# within array create method called pad
	#copy the array
	# check array length, if less than min
	#push pad value
	#return the array

# 2. Initial Solution

class Array

	def pad!(min_size, pad_value = nil)
		while self.length < min_size
			self.push(pad_value)
		end
	self
	end

def pad(min_size, pad_value = nil)
@arr = self.clone
	while @arr.length < min_size
		@arr.push(pad_value)
	end
@arr
end

end

#Refactored Solution



#Driver Code
puts [1,2,3].pad(5) == [1,2,3,nil,nil]
puts [1,2,3].pad(5, 'apple') == [1,2,3,'apple', 'apple']
puts [1,2,3].pad(0) == [1,2,3]

#Reflection
=begin
What parts of your strategy worked? What problems did you face?
I had to do a lot of research on this one.

What questions did you have while coding? What resources did you find to help you answer them?
Learning how to call an instance within the class

What concepts are you having trouble with, or did you just figure something out? If so, what?
--
Did you learn any new skills or tricks?
calling an instance within a class
How confident are you with each of the Learning Competencies?
confident.. I need to work on my psudocode part though.
I seem to not have the right idea at first so my pseudocode is
never what I end up actually writing
Which parts of the challenge did you enjoy?
getting it to work
Which parts of the challenge did you find tedious?

=end