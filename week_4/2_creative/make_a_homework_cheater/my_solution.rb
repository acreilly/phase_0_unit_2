# U2.W4: Homework Cheater!
# User stories
# As a user I want to fill in the parameters with values that will
# flow easily with the paragraph I wrote.

#template
#Blank is a great piece of art. It was created by blank the year blank.
# It is considered to be blank style and if sold today would be worth blank.

# I worked on this challenge [by myself ].

# 2. Pseudocode

# Input: parameters that have been given values
# Output: Filled in values for the parameters that creates a paragraph of information.
# Steps:
# define method essay_writer
# Give parameters of piece, artist, year, style, worth
# Create puts statement that returns a string adding the parameters in correctly.
# Call method outside of method


# 3. Initial Solution
#def essay_writer(piece,artist,year,style,worth)
#puts "#{piece} is a great piece of art. It was created by #{artist} the year #{year}."
#puts "Its style considered to be #{style} and if sold today would be worth #{worth}."
#end

#essay_writer("The Card Players", "Paul Cezanne", "1892-1893", "Postimpressionist", "$269.4 million")
#essay_writer("Portrait of Dr. Gachet", "Vincent van Gogh", "1890", "Postimpressionist", "$82.5 million" )
#essay_writer("The Scream", "Edvard Munch", "1895", "impressionist", "$122.2 million")

# 4. Refactored Solution
# Need to be able to put numbers in as numbers and turn them into strings within method

def essay_writer(piece,artist,year,style,worth)
puts "#{piece} is a great piece of art. It was created by #{artist} the year #{year.to_s}."
puts "Its style considered to be #{style} and if sold today would be worth $#{worth.to_s} million."
end


# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer("The Card Players", "Paul Cezanne", 1892, "Postimpressionist", 269.4)
essay_writer("Portrait of Dr. Gachet", "Vincent van Gogh", 1890, "Postimpressionist", 82.5 )
essay_writer("The Scream", "Edvard Munch", 1895, "impressionist", 122.2)






# 5. Reflection 
#What parts of your strategy worked? What problems did you face?
#Everything worked. I originally made the number inputs to be strings but in the refractor section I
#turned them into integers that turn into strings
#What questions did you have while coding? What resources did you find to help you answer them?
#No questions. This challenge seems really easy, I am wondering if I did it incorrectly.
#It says to use if statements ect, but I don't see why I would need to do any of that.
# I will later take a look at others codes and see what they did and if they used other ways.
#What concepts are you having trouble with, or did you just figure something out? If so, what?
# None
#Did you learn any new skills or tricks?
#No
#How confident are you with each of the Learning Competencies?
# Confident. Unless I didn't do the challenge correctly. I would like feedback.
#Which parts of the challenge did you enjoy?
# Its fun to have an easy time when coding. It makes me feel good and confident.
#Which parts of the challenge did you find tedious?
# None, just wondering if it was done the way DBC wanted.

