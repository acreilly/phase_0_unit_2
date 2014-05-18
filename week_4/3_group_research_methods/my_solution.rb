# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  array = []
  source.each do |x|
    if x.include?(thing_to_find)
      array.push(x)
    end
  end
  p array
end

def my_hash_finding_method(source, thing_to_find)
  array = []
  source.each do |key, value|
    if value == thing_to_find
      array.push(key)
    end
  end
  p array
end
# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  source.map! do |i|
  	if i.is_a? Integer
  		i += thing_to_modify
    else
      i
  end
end
  source
end



def my_hash_modification_method(source, thing_to_modify)
  source.each do |x,y|
    source[x] = y += thing_to_modify
  end
  source
end

# Identify and describe the ruby method you implemented. 
# I used .map! so I could look into each element of the array and be able to modify it
#if it were an integer, if not just keep as is.
# For hash, I used .each which is nothing new.. I had to do research on how to modify the value
# I tried using .each_value but I couldn't figure out how to get it to do the same thing.

=begin
# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end
=end
# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}



=begin
  REFLECTION 
What parts of your strategy worked? What problems did you face?
I used map which worked. I was trying to use each_value for hash but couldn't
figure out a way to get it to work.
What questions did you have while coding? What resources did you find to help you answer them?
How to modify the values of the hash using each_value but
did not find a solution.
What concepts are you having trouble with, or did you just figure something out? If so, what?
I had to research how to do the hash, I don't
  completely understand why I would take the key of each key and then
  equal it to the value plus the thing to modify.

Did you learn any new skills or tricks?
Map

How confident are you with each of the Learning Competencies?
Confident, other than the each_value method.
Which parts of the challenge did you enjoy?
Figuring it out. I struggled with this challenge
Which parts of the challenge did you find tedious?
that I couldn't figure out a way to use each_value

=end