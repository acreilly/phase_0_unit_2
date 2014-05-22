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
=begin
class CreditCard

	def initialize(credit_card)
	@card_number = credit_card
		unless @card_number.to_s.length == 16
     	 raise ArgumentError.new("Please enter a 16 digit card number")
    	end
	end


	def check_card
	card_number = @card_number.to_s.chars.map{|x| x.to_i}
		card_number.each_index do |index|
    		if index % 2 == 0
    			card_number[index] = card_number[index] * 2
    		end
    	end
  		card_number = card_number.join.chars.map{|x| x.to_i}
		if card_number.inject(:+) % 10 == 0
			return true
		else
			return false
		end
	end
end
=end
# 4. Refactored Solution


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
# 1. DRIVER TESTS GO BELOW THIS LINE




card = CreditCard.new(4408041234567893)
p card.check_card == true

cardfail = CreditCard.new(1111111111111111)
p cardfail.check_card == false

card = CreditCard.new(4563960122001999)
p card.check_card == true 




# 5. Reflection 
