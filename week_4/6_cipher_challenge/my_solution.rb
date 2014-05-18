# U2.W4: Cipher Challenge


# I worked on this challenge with: Morgan.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.


=begin
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here? 
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? 
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end
=end
# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  array = ('a'..'z').to_a
  cipher = array.rotate(4)
  input.each do |code|
    found_match = false
    cipher.each do |character|
      if code == character
        decoded_sentence << array[cipher.index(character)] #we have cipher = a-z. cipher.index(y)
        found_match = true
        break
      elsif code == "@" || code == "#" || code == "$" || code == "%"|| code == "^" || code == "&"|| code =="*" #What the heck is this doing? if x equals any of those characters a space will be inserted.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(code) 
        decoded_sentence << code
        found_match = true
        break
      end 
  end
      unless found_match  
      decoded_sentence << code
    end
  end
    decoded_sentence = decoded_sentence.join("")
    if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. - any digit
      decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        #this returns the readable sentence
end


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

=begin
# Reflection
What parts of your strategy worked? What problems did you face?
We understood what the code was doing but struggled being able to execute it.
We worked with Arik as well, who help us understand how to refactor
as well as understand the code completely.

What questions did you have while coding? What resources did you find to help you answer them?
We didn't understand the rubular code, we looked it up to find out what 
it is and what it does. With changing the hash into an array and moving it four spaces
we looked up some ideas and came across rotate which is a great method for doing what we wanted.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Still trying to understand Rubular. I get it but need to research and study it more.

Did you learn any new skills or tricks?
rotate, rubular.. ect
How confident are you with each of the Learning Competencies?
Decently confident. 

Which parts of the challenge did you enjoy?
This was a really cool challenge because of what it did.

Which parts of the challenge did you find tedious?
Just that it took us a moment to understand how to refactor the code.


 =end