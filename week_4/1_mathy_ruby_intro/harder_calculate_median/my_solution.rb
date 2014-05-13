# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array of numbers
# What is the output? (i.e. What should the code return?) the median of the numbers
# What are the steps needed to solve the problem?
# sort array
# check if array length is odd
# if odd take arrays length divide by 2 which returns middle element
# if even take arrays length divide by two and add that to arrays length divided by two minus one
# divide that by two floated for exact number


# 2. Initial Solution

def median(array)
array = array.sort!
if array.length % 2 != 0
	array[array.length/2]
else
	(array[array.length/2 - 1] + array[array.length/2]) / 2.to_f
end
end

puts median([1,2,3])      # => 2
puts median([1,5,8,2,55])
puts median([1,2,3,4])
puts median([4.5, 0, -1]) # => 0
puts median([-100, 100])  # => 0.0


# 3. Refactored Solution



# 4. Reflection 