# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: 16 digits
# Output: return true for a valid card or return false for invalid
# Steps:
# define initalize with parameter of card
	# set instance variable @card to card
	#raise argument if card length is less or more than 16 digits

# define check card method
	#


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

	def initialize(card)
	@card = card.to_s.chars.map{|x| x.to_i}
		unless @card.length == 16
     	 raise ArgumentError.new("Please enter a 16 digit card number")
    	end
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
  		@card.join.chars.map{|x| x.to_i}.reduce(:+)
    end

	def check_card
		if sum % 10 == 0
			return true
		else
			return false
		end
	end
end
# 4. Refactored Solution

# 1. DRIVER TESTS GO BELOW THIS LINE




card = CreditCard.new(4408041234567893)
p card.check_card == true
p card.sum

card = CreditCard.new(4408041234567892)
p card.check_card == true
p card.sum

card = CreditCard.new(4563960122001999)
p card.check_card == true 
p card.sum

card = CreditCard.new(440804123456789) 	# => should return the Argument Error




# 5. Reflection 
