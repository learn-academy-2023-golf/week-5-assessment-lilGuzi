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

class Bike 
    attr_accessor :model, :wheels, :current_speed

   def initialize (model_p) 
    @model = model_p
    @wheels = 2
    @current_speed = 0
   end

   def bike_info
        "the #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
   end
end
 
mountain = Bike.new ('mountain')
p mountain
p mountain.bike_info
# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code: