# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array of number or strings
# What is the output? (i.e. What should the code return?) If all parts of the array are unique, it will return the whole array. If there are duplicates or not unique, it returns the not unique part of the array.
# What are the steps needed to solve the problem?
# Define a method called mode
# give it parameter of array
# create a loop that checks each element of the array
# check if array is empty
# write if statement that checks if none of the array is similar to return whole array
# if statement that checks if any elements are similar to return those elements


# 2. Initial Solution

def mode(array)
array.each do |i|
if i == i
return i
else
	return array
end
end
end

def mode(array)
count = 0
array.each do |i|
count += 1
count += i
end
count
end


# 3. Refactored Solution



# 4. Reflection 