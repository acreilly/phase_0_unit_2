# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution
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


# Refactored Solution






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

card_check_assert {card1.check_card}
card_check_assert {card2.check_card}
card_check_assert {card3.check_card}





# 5. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
What questions did you have while coding? What resources did you find to help you answer them?
What concepts are you having trouble with, or did you just figure something out? If so, what?
Did you learn any new skills or tricks?
How confident are you with each of the Learning Competencies?
Which parts of the challenge did you enjoy?
Which parts of the challenge did you find tedious?
	
=end