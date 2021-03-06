# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array of numbers
# What is the output? (i.e. What should the code return?) the average of those numbers
# What are the steps needed to solve the problem?
# define method of get_grade
# create loop
#add each element together
# divide by length
#find grade through if statement


# 2. Initial Solution
=begin
def get_grade(array)
sum = 0
array.each do |i|
sum += i
end
average = sum / array.length
if average >= 90
	"A"
elsif average >= 80
	"B"
elsif average >= 70
	"C"
elsif average >= 60
	"D"
elsif average < 59
	"F"
else
	"error"
end
end
=end
# 3. Refactored Solution
# Changed to case, a lot less writing. Also changed the loop to a one line loop to save room.
def get_grade(array)
sum = 0
array.each {|i| sum += i}
average = sum / array.length
    case average 
    when 90..100
      "A"
    when 80..89
      "B"
    when 70..79
      "C"
    when 60..69
      "D"
    else
      "F"
  end
end

puts get_grade([90,50,100]) == "B"
# 4. Reflection 

=begin

What parts of your strategy worked? What problems did you face?
I knew this one. Didn't face any problems.

What questions did you have while coding? What resources did you find to help you answer them?
Had to do some research on case again since it has been awhile
What concepts are you having trouble with, or did you just figure something out? If so, what?
none
Did you learn any new skills or tricks?
just remembering how to do case again
How confident are you with each of the Learning Competencies?
yes
Which parts of the challenge did you enjoy?
getting it to work
Which parts of the challenge did you find tedious?
none

=end