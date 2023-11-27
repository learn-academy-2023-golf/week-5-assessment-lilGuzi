# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:

# declare a method called new_arr that takes in an array parameter
def new_arr(array)
# returns the result of the array after flattening the values which turns the nested arrays into one array and then sorting the array
    array.values.flatten.sort
end
#calls on the new_arr method with the us_states parameter
p new_arr(us_states)

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:


# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:


# declare a class caled Bike
class Bike 
# add an attribute accessor for the attributes model, wheels, and current_speed
    attr_accessor :model, :wheels, :current_speed
# initialize method that takes a parameter model_p
   def initialize (model_p) 
# set the model attribute to the value of model_p
    @model = model_p
# set the wheels attribute to a default value of 2
    @wheels = 2
# the current_speed attribute to a default value of 0
    @current_speed = 0
   end
# declare a method called bike_info
   def bike_info
# returns a string containing the model, number of wheels, and current speed
        "the #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
   end
   # declares a method called pedal_faster that takes in a parameter of speed
   def pedal_faster(speed)
   # sets the current speed to equal the current speed plus the added speed
       @current_speed = @current_speed + speed
   end
   # declares a method called brake that takes in a parameter of speed
   def brake(speed)
   # checks of the current speed is greater than 0
       if @current_speed > 0 
   # if the speed is greater than 0 will add the speed parameter to the current speed and set the total as the new current speed
           @current_speed = @current_speed - speed
   # will check if the new current speed is less than or equal to 0
           if @current_speed <= 0
   # if the current speed is less than or equal to 0 will set the current speed as 0
               @current_speed = 0
           end
   # returns the updated current speed
           @current_speed
       end
   end
end
# declares a new instance of Bike called mountain with a "mountain" parameter
mountain = Bike.new ('mountain')
# calls on the mountain instance
p mountain.pedal_faster(15)
#calls on the mountain instance and executes the bike_info method
p mountain.bike_info
