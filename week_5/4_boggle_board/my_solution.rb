# U2.W5: A Nested Array to Model a Boggle Boardh

# I worked on this challenge [Allison, Morgan].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
#define method called create_word
#give it the arguments board and coords (have coord be able to take more than one element)
#grab elements from boggle_board array then join them
#return the word from the boggle_board elements
#end

# Initial Solution
 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end



# Refactored Solution
# We think the code is fine as is

# DRIVER TESTS GO BELOW THIS LINE
  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  ==  "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"

# Reflection 
#I found it odd that it seemed like the code was just given to us?
#OUTSTANDING QUESTION: Are you just giving us the code here?
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# First define method called get_row
# set parameters to game and row
#return game with row in brackets


# Initial Solution
def get_row(game,row)
    return game[row]
end



# Refactored Solution
#

# DRIVER TESTS GO BELOW THIS LINE
puts get_row(boggle_board,1) ==  ["i", "o", "d", "t"]
puts get_row(boggle_board,2) ==  ["e", "c", "l", "r"]
# Reflection 
#very simple


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define method get_col
#parameters set to game with default of boggle_board and col
# create empty array called column
# create a loop on game and make it push each array element index inputed to column

# Initial Solution
def get_col(game,col)
	column = []
    game.each do |x|
        column.push(x[col])
    end
column
end



# Refactored Solution

def get_col(game,col)
   game.map{|x| x[col]} 
end






# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c"
puts boggle_board[3][3] == "e"
puts boggle_board[2][3] == "x"
puts get_col(boggle_board,1)  ==  ["r", "o", "c", "a"]

=begin
# 5. Reflection 
What parts of your strategy worked? What problems did you face?
For the last section we had to do a bit of research but these problems were pretty simple
What questions did you have while coding? What resources did you find to help you answer them?
how to solve the last problem
What concepts are you having trouble with, or did you just figure something out? If so, what?
none
Did you learn any new skills or tricks?
no
How confident are you with each of the Learning Competencies?
Confident
Which parts of the challenge did you enjoy?
..
Which parts of the challenge did you find tedious?
..
=end
