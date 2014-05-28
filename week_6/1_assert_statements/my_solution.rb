# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement
=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end
# 2. Pseudocode what happens when the code above runs
# raises error if assert is not yield
# When assert name == bettysue, assert will yield bettysue

# 3. Copy your selected challenge here


class CreditCard

	def initialize(card)
	@card = card.to_s.chars.map{|x| x.to_i}
     	 raise ArgumentError.new("Please enter a 16 digit card number") unless @card.length == 16
	end

    def double_digit
    	@card.map!.with_index do |element,index|
    		if index.even? == true
    			element * 2
    		else
    			element
    		end
    	end
    end

    def sum
    	double_digit
  		@card.join.chars.map{|x| x.to_i}.inject{|x,y| x+y}
    end

	def check_card
		if sum % 10 == 0
			return true
		else
			return false
		end
	end
end



card1 = CreditCard.new(4408041234567893)
p card1.check_card == true

card2 = CreditCard.new(1111111111111111)
p card2.check_card == false

card3 = CreditCard.new(4563960122001999)
p card3.check_card == true 






# 4. Convert your driver test code from that challenge into Assert Statements
def assert
    raise "Card not valid!" unless yield
end

assert {CreditCard.new(4408041234567893).check_card == true}
assert {CreditCard.new(1111111111111111).check_card == false}
assert {CreditCard.new(4563960122001999).check_card == true}




# 5. Reflection
=begin
    
What parts of your strategy worked? What problems did you face?
Everything worked, no problems.

What questions did you have while coding? What resources did you find to help you answer them?
None. 

What concepts are you having trouble with, or did you just figure something out? If so, what?
None.

Did you learn any new skills or tricks?
Learned assert

How confident are you with each of the Learning Competencies?
Confident.

Which parts of the challenge did you enjoy?
Learning something new.

Which parts of the challenge did you find tedious?
None.
=end
    

