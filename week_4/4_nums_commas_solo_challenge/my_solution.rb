# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? an integer
# What is the output? (i.e. What should the code return?) string with commas if number is over 1000
# What are the steps needed to solve the problem?
# create a method called seperate_commas
# if integer is less than 1000
	# return integer
# elsif integer is over 1000
	# turn integer to string
	# insert comma every 3 characters
	# return string
# else
	# return string of error

# 2. Initial Solution
=begin
def separate_comma(num)
if num < 1000
	num = num.to_s
	return num
elsif num >= 1000
	num = num.to_s
	num.insert(-4,",")
elsif num >= 1000000
	num = num.to_s
	num.insert(-4,",")
	num.insert(-8,",")
	return num
else
	return "ERROR"
end
end
=end

=begin
def separate_comma(num)
if num.between?(0,999)
	num = num.to_s
	return num
elsif num.between?(1000,999999)
	num = num.to_s
	num.insert(-4,",")
elsif num.between?(1000000,999999999)
	num = num.to_s
	num.insert(-4,",").insert(-8,",")
	return num
else
	return "ERROR"
end
end
=end



# 3. Refactored Solution
# I tried to combine and remove extra things that werent needed
# I know there is a better way to solve this issue but it works.
# If I have more time this week I will attempt for another solution
def separate_comma(num)
if num.between?(0,999)
	num.to_s
elsif num.between?(1000,999999)
	num.to_s.insert(-4,",")
elsif num.between?(1000000,999999999)
	num = num.to_s
	num.insert(-4,",").insert(-8,",")
else
	"ERROR"
end
end


#Driver test code

puts separate_comma(1000)    
puts separate_comma(19000)    
puts separate_comma(9900000) 
puts separate_comma(0)       
puts separate_comma(100)
# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
At first I just did comparisons and inserted the comma from the right
but when it came time to insert the comma twice, it wouldn't work.
There was also an issue with the numbers so I decided to change the if statement
into finding anything within a range
What questions did you have while coding? What resources did you find to help you answer them?
I had to research how to insert a string. At first I thought it was
inject but found out it was insert. I used ruby docs to find it.
Also to find a range or how to go about it I used http://stackoverflow.com/questions/870507/determining-if-a-variable-is-within-range-ruby
What concepts are you having trouble with, or did you just figure something out? If so, what?
I had to research a lot, so I didn't have trouble with the concepts
once I researched how to go about it.
Did you learn any new skills or tricks?
I learned how to find a range with .between? I also learned that
with string it is .insert not .inject
How confident are you with each of the Learning Competencies?
Decently confident. I know there is another way to go about solving this
problem, maybe with a loop. If I have free time later this week
I would like to figure out a way to do any number and insert a comma every 3 characters
	I unfortunately can only go up to 999 million unless I want to keep writing if statements forever
Which parts of the challenge did you enjoy?
Solving the problem and feeling confident with the things I learned
Which parts of the challenge did you find tedious?
I just wish I could figure out how to make it do every three characters without
	writing if statements forever.

=end