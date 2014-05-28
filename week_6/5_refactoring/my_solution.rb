# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution
=begin
class CreditCard

	def initialize(card)
	@card = card.to_s.chars.map{|x| x.to_i} #takes argument, turns to string, breaks up by each character, then changes to integer
		unless @card.length == 16 #checks if card is 16 digits
     	 raise ArgumentError.new("Please enter a 16 digit card number")
    	end
	end

    def double_digit
    	@card.map!.with_index do |element,index| #takes card, checks index of array, if the index is even then doubles that element, else returns the element
    		if index.even? == true
    			element * 2
    		else
    			element
    		end
    	end
    end

    def sum
    	double_digit # calls double digit
  		@card.join.chars.map{|x| x.to_i}.inject{|x,y| x+y} #takes card joins all the digits by turning into string, breaks each chacter apart, then changes to integer and adds each digit together
    end

	def check_card
		if sum % 10 == 0 # checks if sum can be divided by 10 with no remainder, if so returns true and valid credit card
			return true
		else
			return false
		end
	end
end

=end
# Refactored Solution
# I think my previous code was very readable, but I will refactor to make it less wordy and repetitive.
class CreditCard

	def initialize(card)
	@card = card.to_s.chars.map{|x| x.to_i}
    raise ArgumentError.new("Please enter a 16 digit card number") unless @card.length == 16
	end

    def double_digit
    	@card.map!.with_index {|element,index| index.even? == true ? element * 2 : element}
    end

    def sum
    	double_digit
  		@card.join.chars.map{|x| x.to_i}.inject{|x,y| x+y}
    end

	def check_card
		sum % 10 == 0 ? true : false
	end
end




# DRIVER TESTS GO BELOW THIS LINE
def assert
raise "Card not valid!" unless yield
end

card1 = CreditCard.new(4408041234567893)
p card1.check_card == true

card2 = CreditCard.new(1111111111111111)
p card2.check_card == false

card3 = CreditCard.new(4563960122001999)
p card3.check_card == true 

assert {CreditCard.new(4408041234567893).check_card == true}
assert {CreditCard.new(1111111111111111).check_card == false}
assert {CreditCard.new(4563960122001999).check_card == true}





# 5. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
I think my previous code was readable, so I just made it less wordy and repetitive.
What questions did you have while coding? What resources did you find to help you answer them?
how to ternary operator, found a good website..
http://www.rubyinside.com/21-ruby-tricks-902.html

What concepts are you having trouble with, or did you just figure something out? If so, what?
None.

Did you learn any new skills or tricks?
The ternary operator

How confident are you with each of the Learning Competencies?
Confident

Which parts of the challenge did you enjoy?
trying new ways of doing if statements

Which parts of the challenge did you find tedious?
none.
	
=end