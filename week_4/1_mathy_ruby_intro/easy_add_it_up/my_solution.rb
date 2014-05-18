# U2.W4: Add it up!


# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array of numbers
# What is the output? (i.e. What should the code return?) adding up the numbers in the array
# What are the steps needed to solve the problem?
# Define a method called total
# create a variable called number and set it to zero
# create a for loop that takes each element in the array to do i
# set the variable number to equal number plus i
# return number after loop

# What is the input? an array of strings
# What is the output? (i.e. What should the code return?) joining the strings, making sure the sentence is capitalized and adding a period at the end
# What are the steps needed to solve the problem?
# take the parameter array and add the method capitalize
# take the parameter array and add the method join
# add the string of a period to array

# 2. Initial Solution

def total(array) 
  number = 0
  array.each do |i|
    number += i
  end
  number
end

puts total([1,2,3]) == 6


def sentence_maker(array)
array.first.capitalize!
array.join(" ") + "."
end

puts sentence_maker(["i", "want", "to", "go", "to", "the", "movies"]) == "I want to go to the movies."


# 3. Refactored Solution
# I believe this was the simplest way to do the problem

=begin
# 4. Reflection 
What parts of your strategy worked? What problems did you face?
I need help at first, but once I got the idea I got the problems correct. I really need to review ruby before I go further in this weeks tasks.

What questions did you have while coding? What resources did you find to help you answer them?
I think I was just really rusty

Which parts of the challenge did you find tedious?
just that i was rusty, I knew how to do this, I just have
	been stressed out so I wasn't allowing it to process.
=end