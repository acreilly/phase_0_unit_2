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