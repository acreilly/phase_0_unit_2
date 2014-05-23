# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Jeremy Wong
# 2) Allison Reilly

 # This is the file you should end up editing. 
 
 #Input number of people and the dessert
 #output how many desserts needed for amount of people
 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # create hash
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0

    raise ArgumentError.new("You can't make that food") unless my_list.has_key?(fav_food)

    fav_food_qty = my_list.values_at(fav_food)[0] #create variable and set it to the my_list hash's value as an array

    if num_of_people % fav_food_qty == 0 #if num of people divides evenly by fav food quantity
        num_of_food = num_of_people / fav_food_qty #create new variable that is set to num of people divided by fav food qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
    else num_of_people % fav_food_qty != 0 # if not evenly divided
        case fav_food
            when "pie"
                    pie_qty = num_of_people / my_list["pie"] # pie qty = 5
                    num_of_people = num_of_people % my_list["pie"] # num of people = 1
                    cake_qty = num_of_people / my_list["cake"]
                    num_of_people = num_of_people % my_list["cake"]
                    cookie_qty = num_of_people
            when "cake"
                    cake_qty = num_of_people / my_list["cake"]
                    num_of_people = num_of_people % my_list["cake"]
                    cookie_qty = num_of_people
            when "cookie"
        end
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 
