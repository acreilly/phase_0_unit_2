# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard

	def initialize(board)
		@board = board
	end

	def create_word(*coords)
    	coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	def get_row(row)
    	@board[row]
	end

	def get_col(col)
		@board.map{|x| x[col]} 
	end

	def get_letter(row,col)
		@board[row][col]
	end

	#def diagonal(coordsX, coordsY)

#end
 
end
 

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)



# 4. Refactored Solution
#I don't believe there was any reason to refactor. My solution is understandable and simple.





# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion Failed!" unless yield
end

puts boggle_board.create_word([1,2],[1,1], [2,1], [3,2]) == "dock"
puts boggle_board.get_row(3) == ["t", "a", "k", "e"]
puts boggle_board.get_col(1)  ==  ["r", "o", "c", "a"]
# create driver test code to retrieve a value at a coordinate here:
puts boggle_board.get_letter(0,1) == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board.get_letter(2,1) == "c"
puts boggle_board.get_letter(3,2) == "k"

puts boggle_board.get_row(0).join("") == "brae"
puts boggle_board.get_row(1).join("") == "iodt"
puts boggle_board.get_row(2).join("") == "eclr"
puts boggle_board.get_row(3).join("") == "take"

puts boggle_board.get_col(0).join("") == "biet"
puts boggle_board.get_col(1).join("") == "roca"
puts boggle_board.get_col(2).join("") == "adlk"
puts boggle_board.get_col(3).join("") == "etre"
# implement tests for each of the methods here:
assert { boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" }
assert {boggle_board.get_row(3) == ["t", "a", "k", "e"]}
assert {boggle_board.get_col(1)  ==  ["r", "o", "c", "a"]}
assert {boggle_board.get_letter(0,1) == "r"}
assert {boggle_board.get_letter(0,1) == "r"}


# 5. Reflection 
=begin
	
What parts of your strategy worked? What problems did you face?
This challenge was relatively easy. Everything worked well, I experimented with assert.

What questions did you have while coding? What resources did you find to help you answer them?
No, everything was simple enough.

What concepts are you having trouble with, or did you just figure something out? If so, what?
--

Did you learn any new skills or tricks?
assert

How confident are you with each of the Learning Competencies?
Confident

Which parts of the challenge did you enjoy?
making this challenge more complex, going further than we did last week.
Which parts of the challenge did you find tedious?
	
=end