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
	#

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
