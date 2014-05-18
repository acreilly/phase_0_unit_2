# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself ].



# 1. First Person's solution I liked tleung999
#    What I learned from this solution:
# He refactored this solution to the basics which is what I like
# It is at its most minimum size plus uses methods I haven't learned yet
# Copy solution here:
=begin
class Array 
	def pad  (padnum, padvalue = nil)
		self.clone.pad!(padnum, padvalue)
	end

	def pad! (padnum, padvalue = nil)
		self.fill(padvalue, self.length..padnum-1)
	end
end



# 2. Second Person's solution I liked whoisglover
#    What I learned from this solution
# I haven't used the << so I liked how this person
# used it in their code because it makes sense to do so
# Copy solution here:
class Array 
def pad(new_size, new_value=nil)
	if(self.length >= new_size)
		return self
	end
	newt = []
	newt += self
	while newt.length < new_size
		newt << new_value
	end	
	return newt
end

def pad!(new_size, new_value=nil)
	if(self.length >= new_size)
		return self
	end
	while self.length < new_size
		self << new_value
	end
	return self
end

end




# 3. My original solution:
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

=end

# 4. My refactored solution:

class Array

def pad!(min,value=nil)
@arr = self.clone
@arr.push(value) while @arr.length < min
return @arr
end

def pad(min,value = nil)
self.push(value) while self.length < min
return self
end

end

#driver code
puts [1,2,3].pad(5) == [1,2,3,nil,nil]
puts [1,2,3].pad(5, 'apple') == [1,2,3,'apple', 'apple']
puts [1,2,3].pad(0) == [1,2,3]

# 5. Reflection
=begin
What parts of your strategy worked? What problems did you face?
My refactored code worked, I made the mistake of forgetting to return it
but once I did it worked fine.

What questions did you have while coding? What resources did you find to help you answer them?
how to write a while loop within one line which worked great

What concepts are you having trouble with, or did you just figure something out? If so, what?
Nothing

Did you learn any new skills or tricks?
how to write a while loop within one line

How confident are you with each of the Learning Competencies?
Confident

Which parts of the challenge did you enjoy?
refactoring the code to be better

Which parts of the challenge did you find tedious?
none
=end