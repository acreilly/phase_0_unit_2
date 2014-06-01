=begin
As a video game player, I want to be able to create a new car and set it's model and color so I can customize it in the video game.
As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
=end

# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [Allison, Morgan ].


# 2. Pseudocode
# create a class car
    #initalize with parameters of car
        #define instance variables
        # define speed = 0
    
    #define method called stylize with parameters of model and color
        #define the instance variables and set to the parameters
        
    #define method called distance with parameter of distance
        #define the instance varaible
        
    #define method called speed with parameter speed_limit
        # define the instance variable
    
    #define direction with parameter of direction
        #if "left" gfg
        
        #define speed
    
    
    #define total_distance
        
        
    #define stop
    
    
    #define last_move
    

# 3. Initial Solution
class Car
	attr_reader :total, :pizza
    def initialize(model,color)
        @model = model
        @color = color
        @total = 0
        @pizza = []
    end

    def distance(distance)
        @distance = distance.to_f
        @total += distance
    end

    def speed_limit(speed_limit)
      @speed_limit = speed_limit
      puts "You are going #{speed_limit}."
    end

    def direction(direction)
      if direction == "left"
        return "Turning left."
     elsif direction == "right"
       return "Turning right"
   end
end

    def total_distance
        puts "You're total distance for this trip is #{@total}"
        @total
    end

    def stop
        @speed_limit = 0
        puts "You are stopped."
    end

    def current_move
        puts "Currently going #{@speed_limit} MPH for #{@distance} miles"
    end

    def add_pizza(add)
       @pizza <<  add
    end
    
    def next_pizza
        puts "Your next pizza is a #{@pizza[0].crust_type} pizza with #{pizza[0].sauce} and #{pizza[0].toppings}"
    end
    
    def deliver_pizza
       @pizza.shift 
    end
end    


class Pizza
    attr_reader :crust_type, :sauce, :toppings
    def initialize(crust_type, sauce, *toppings)
       @crust_type = crust_type
       @sauce = sauce
       @toppings = toppings
    end
    
    def pizza_type
       puts "You have a #{@crust_type} pizza with #{@sauce} sauce and #{@toppings}"
    end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
p honda = Car.new("Honda","Blue")
p honda.distance(0.25)
p honda.speed_limit(25)
p honda.stop
p honda.direction("right")
p honda.distance(1.5)
p honda.speed_limit(35)
p honda.current_move
p honda.speed_limit(15)
p honda.distance(0.25)
p honda.stop
p honda.direction("left")
p honda.distance(1.4)
p honda.stop
p honda.total_distance

pepperoni = Pizza.new("thin","tomato","cheese","veggies")
cheese = Pizza.new("thick","ranch","sausage")
p pepperoni.pizza_type
p honda.add_pizza(pepperoni)
p honda.add_pizza(cheese)
p honda.next_pizza
p honda.deliver_pizza
p honda.next_pizza


# 5. Reflection 

# 5. Reflection 